#!/bin/bash
# batch_fuzz_cves.sh - Batch fuzzing of multiple CVEs from UAFBench
# Compares fuzzing effectiveness across different CVE and fuzzing modes

set -e

# Configuration
UAFUZZ_PATH="${UAFUZZ_PATH:-/home/khoile/uafuzz}"
UAFBENCH_PATH="${UAFBENCH_PATH:-/tmp/uafbench}"
TIMEOUT_MIN="${TIMEOUT_MIN:-10}"
RESULTS_DIR="${RESULTS_DIR:-/tmp/uafuzz_batch_results}"
USE_ASAN="${USE_ASAN:-0}"
USE_NO_IDA="${USE_NO_IDA:-1}"

# CVEs to test (easily reproducible first)
CVE_LIST=(
    "CVE-2016-3189"   # bzip2recover - UAF (easy)
    "CVE-2016-4487"   # cxxfilt - UAF (easy)
    "CVE-2017-10686"  # nasm - UAF (easy)
)

# Fuzzing modes
MODES=("aflqemu" "uafuzz")

# Create results directory
mkdir -p "$RESULTS_DIR"

echo "=========================================="
echo "UAFBench Batch Fuzzing Analysis"
echo "=========================================="
echo "Timeout: $TIMEOUT_MIN minutes per CVE"
echo "Use ASAN: $USE_ASAN"
echo "Skip IDA: $USE_NO_IDA"
echo "Results: $RESULTS_DIR"
echo ""

# Summary file
SUMMARY="$RESULTS_DIR/SUMMARY.txt"
> "$SUMMARY"

{
    echo "UAFBench Batch Fuzzing Results"
    echo "=============================="
    echo "Date: $(date)"
    echo "Timeout: $TIMEOUT_MIN minutes per run"
    echo ""
    echo "CVE Statistics:"
    echo ""
} >> "$SUMMARY"

# Test each CVE in each mode
for cve in "${CVE_LIST[@]}"; do
    echo "[*] Processing CVE: $cve"
    
    for mode in "${MODES[@]}"; do
        echo "    - Mode: $mode"
        
        # Build command
        CMD_ARGS="$cve $mode $TIMEOUT_MIN"
        [ $USE_NO_IDA -eq 1 ] && CMD_ARGS="$CMD_ARGS --no_ida"
        [ $USE_ASAN -eq 1 ] && CMD_ARGS="$CMD_ARGS --use_asan"
        
        # Run fuzzing
        echo "      Running fuzzer..."
        UAFUZZ_PATH="$UAFUZZ_PATH" UAFBENCH_PATH="$UAFBENCH_PATH" \
          timeout 600 "$UAFUZZ_PATH/run_cve_fuzzing.sh" $CMD_ARGS \
          > "$RESULTS_DIR/${cve}_${mode}.log" 2>&1 || {
            echo "      [!] Fuzzing timed out or failed (check logs)"
        }
        
        # Extract results
        WORK_DIR="/tmp/uafuzz_cve_$cve"
        FUZZER_STATS=$(find "$WORK_DIR" -name "fuzzer_stats" -type f 2>/dev/null | head -1)
        
        if [ -f "$FUZZER_STATS" ]; then
            # Parse statistics
            EXECS=$(grep "execs_done" "$FUZZER_STATS" 2>/dev/null | awk '{print $3}' || echo "N/A")
            EXECS_PER_SEC=$(grep "execs_per_sec" "$FUZZER_STATS" 2>/dev/null | awk '{print $3}' || echo "N/A")
            PATHS=$(grep "paths_total" "$FUZZER_STATS" 2>/dev/null | awk '{print $3}' || echo "N/A")
            CRASHES=$(grep "unique_crashes" "$FUZZER_STATS" 2>/dev/null | awk '{print $3}' || echo "0")
            HANGS=$(grep "unique_hangs" "$FUZZER_STATS" 2>/dev/null | awk '{print $3}' || echo "0")
            
            echo "      Results: execs=$EXECS paths=$PATHS crashes=$CRASHES"
            
            # Save to summary
            {
                echo "$cve ($mode):"
                echo "  Executions: $EXECS"
                echo "  Exec/sec: $EXECS_PER_SEC"
                echo "  Paths: $PATHS"
                echo "  Crashes: $CRASHES"
                echo "  Hangs: $HANGS"
                echo ""
            } >> "$SUMMARY"
            
            # Copy full stats
            cp "$FUZZER_STATS" "$RESULTS_DIR/${cve}_${mode}_stats.txt"
        else
            echo "      [!] No results found (fuzzer may have failed to start)"
            echo "$cve ($mode): FAILED" >> "$SUMMARY"
        fi
    done
    
    echo ""
done

# Generate comparison table
echo "[*] Generating comparison report..."

{
    echo ""
    echo "Comparison Table:"
    echo "=================="
    echo "CVE | AFL-QEMU Execs | AFL-QEMU Crashes | UAFuzz Execs | UAFuzz Crashes | Speedup"
    echo "-" | sed 's/./&/g; s/.*/-&-/'
    
    for cve in "${CVE_LIST[@]}"; do
        # Read stats
        AFLQ_STATS="$RESULTS_DIR/${cve}_aflqemu_stats.txt"
        UAFZ_STATS="$RESULTS_DIR/${cve}_uafuzz_stats.txt"
        
        if [ -f "$AFLQ_STATS" ] && [ -f "$UAFZ_STATS" ]; then
            AFLQ_EXECS=$(grep "execs_done" "$AFLQ_STATS" | awk '{print $3}')
            AFLQ_CRASHES=$(grep "unique_crashes" "$AFLQ_STATS" | awk '{print $3}')
            UAFZ_EXECS=$(grep "execs_done" "$UAFZ_STATS" | awk '{print $3}')
            UAFZ_CRASHES=$(grep "unique_crashes" "$UAFZ_STATS" | awk '{print $3}')
            
            # Calculate speedup
            if [ "$AFLQ_EXECS" -gt 0 ] && [ "$UAFZ_EXECS" -gt 0 ]; then
                SPEEDUP=$(echo "scale=2; $UAFZ_EXECS / $AFLQ_EXECS" | bc)
            else
                SPEEDUP="N/A"
            fi
            
            printf "%s | %d | %d | %d | %d | %s\n" \
              "$cve" "$AFLQ_EXECS" "$AFLQ_CRASHES" "$UAFZ_EXECS" "$UAFZ_CRASHES" "$SPEEDUP"
        fi
    done
    
    echo ""
    echo "Crash Detection Summary:"
    echo "======================="
    
    TOTAL_CRASHES=0
    for cve in "${CVE_LIST[@]}"; do
        for mode in "${MODES[@]}"; do
            STATS="$RESULTS_DIR/${cve}_${mode}_stats.txt"
            if [ -f "$STATS" ]; then
                CRASHES=$(grep "unique_crashes" "$STATS" | awk '{print $3}')
                if [ "$CRASHES" -gt 0 ]; then
                    echo "$cve ($mode): $CRASHES crash(es)"
                    TOTAL_CRASHES=$((TOTAL_CRASHES + CRASHES))
                fi
            fi
        done
    done
    
    echo ""
    echo "Total Crashes Detected: $TOTAL_CRASHES"
    
} >> "$SUMMARY"

# Display summary
echo ""
echo "=========================================="
echo "Batch Fuzzing Complete!"
echo "=========================================="
echo ""
cat "$SUMMARY"

echo ""
echo "[*] Full results saved to: $RESULTS_DIR"
echo "[*] Summary: $SUMMARY"
echo ""
echo "Next steps:"
echo "  1. Review $SUMMARY for performance analysis"
echo "  2. Check $RESULTS_DIR/*.log for detailed fuzzer output"
echo "  3. Examine crash samples in /tmp/uafuzz_cve_*/fuzz_*/*/crashes/"
