#!/bin/bash
# run_cve_fuzzing.sh - UAFBench CVE fuzzing wrapper for UAFuzz
# Integrates UAFBench real CVE cases into the UAFuzz pipeline
# Usage: ./run_cve_fuzzing.sh <CVE_NAME> <MODE> <TIMEOUT_MIN> [--no_ida] [--use_asan]
# Modes: aflqemu, uafuzz, aflgo
# Examples:
#   ./run_cve_fuzzing.sh CVE-2016-3189 uafuzz 60
#   ./run_cve_fuzzing.sh CVE-2019-20633 aflqemu 30 --use_asan

set -e

# Configuration
UAFUZZ_PATH="${UAFUZZ_PATH:-.}"
UAFBENCH_PATH="${UAFBENCH_PATH:-/tmp/uafbench}"
AFL_PATH="${AFL_PATH:-$UAFUZZ_PATH/third_party/afl-2.52b}"
SCRIPTS="${SCRIPTS:-$UAFUZZ_PATH/scripts}"

# Parse arguments
CVE_NAME="${1:-CVE-2016-3189}"
RUN_MODE="${2:-uafuzz}"
TIMEOUT_MIN="${3:-60}"
USE_IDA=1
USE_ASAN=0

while [[ $# -gt 3 ]]; do
    case "$4" in
        --no_ida) USE_IDA=0; shift ;;
        --use_asan) USE_ASAN=1; shift ;;
        *) shift ;;
    esac
done

# Resolve paths
CVE_SCRIPT="$UAFBENCH_PATH/$CVE_NAME.sh"
VALGRIND_TARGET="$UAFBENCH_PATH/valgrind/$CVE_NAME.valgrind"
SEEDS_DIR="$UAFBENCH_PATH/seeds/$CVE_NAME"
IDA_DIR="$UAFBENCH_PATH/ida/$CVE_NAME"

# Validate inputs
if [ ! -f "$CVE_SCRIPT" ]; then
    echo "[ERROR] CVE script not found: $CVE_SCRIPT"
    exit 1
fi

if [ ! -d "$SEEDS_DIR" ]; then
    echo "[ERROR] Seeds directory not found: $SEEDS_DIR"
    exit 1
fi

if [ $USE_IDA -eq 1 ] && [ ! -f "$VALGRIND_TARGET" ]; then
    echo "[ERROR] Valgrind target file not found: $VALGRIND_TARGET"
    exit 1
fi

# Extract CVE metadata
echo "[*] Processing CVE: $CVE_NAME"
echo "    Mode: $RUN_MODE, Timeout: $TIMEOUT_MIN min"
echo "    Use IDA: $USE_IDA, Use ASAN: $USE_ASAN"

# Create working directory
WORK_DIR="/tmp/uafuzz_cve_$CVE_NAME"
rm -rf "$WORK_DIR"
mkdir -p "$WORK_DIR"
cd "$WORK_DIR"

echo "[*] Working directory: $WORK_DIR"

# Step 1: Clone and compile the source
echo "[*] Step 1: Cloning and compiling source code"

export UAFUZZ_PATH="$UAFUZZ_PATH"
export UAFBENCH_PATH="$UAFBENCH_PATH"
export SCRIPTS="$SCRIPTS"
export AFL_PATH="$AFL_PATH"

# Create a modified CVE script that handles ASAN selection
# Source the CVE setup but intercept SUBJECT
bash "$CVE_SCRIPT" "$RUN_MODE" "$TIMEOUT_MIN" "$VALGRIND_TARGET" > /tmp/cve_build.log 2>&1 || {
    echo "[!] CVE script execution completed (may have started fuzzing)"
    tail -30 /tmp/cve_build.log
}

# Find where SUBJECT was set up
SUBJECT=$(grep -h "export SUBJECT=" /tmp/cve_build.log | tail -1 | cut -d= -f2 | tr -d ' ')
if [ -z "$SUBJECT" ]; then
    # Try to find the directory based on CVE name
    SUBJECT=$(find /tmp -maxdepth 2 -type d -name "${CVE_NAME}" -o -name "CVE-*" -newermt "5 minutes ago" 2>/dev/null | head -1)
fi

if [ -z "$SUBJECT" ] || [ ! -d "$SUBJECT" ]; then
    echo "[ERROR] Could not locate subject directory"
    echo "[*] Available directories:"
    find /tmp -maxdepth 2 -type d -newermt "5 minutes ago" 2>/dev/null | head -5
    exit 1
fi

echo "[*] Subject directory: $SUBJECT"

# Step 2: Identify binary locations
echo "[*] Step 2: Locating compiled binaries"

# Get PUT name (binary name) from CVE script
PUT=$(grep "^PUT=" "$CVE_SCRIPT" | cut -d= -f2 | tr -d '"')
echo "[*] Binary name (PUT): $PUT"

# Locate native and ASAN binaries
BINARY_NATIVE=""
BINARY_ASAN=""

if [ -d "$SUBJECT/obj" ]; then
    BINARY_NATIVE=$(find "$SUBJECT/obj" -maxdepth 1 -type f -name "$PUT" 2>/dev/null | head -1)
    if [ -z "$BINARY_NATIVE" ]; then
        BINARY_NATIVE=$(find "$SUBJECT/obj" -maxdepth 2 -type f -name "$PUT" 2>/dev/null | head -1)
    fi
fi

if [ -d "$SUBJECT/obj-asan" ]; then
    BINARY_ASAN=$(find "$SUBJECT/obj-asan" -maxdepth 1 -type f -name "$PUT" 2>/dev/null | head -1)
    if [ -z "$BINARY_ASAN" ]; then
        BINARY_ASAN=$(find "$SUBJECT/obj-asan" -maxdepth 2 -type f -name "$PUT" 2>/dev/null | head -1)
    fi
fi

# Fallback: Look for any executable matching PUT name
if [ -z "$BINARY_NATIVE" ]; then
    BINARY_NATIVE=$(find "$SUBJECT" -name "$PUT" -type f 2>/dev/null | head -1)
fi
if [ -z "$BINARY_ASAN" ]; then
    BINARY_ASAN=$(find "$SUBJECT" -name "${PUT}-asan" -o -name "$PUT" -type f 2>/dev/null | tail -1)
fi

if [ -z "$BINARY_NATIVE" ]; then
    echo "[ERROR] Could not locate native binary: $PUT"
    echo "[*] Contents of $SUBJECT:"
    find "$SUBJECT" -type f -executable 2>/dev/null | head -10
    exit 1
fi

echo "[*] Native binary: $BINARY_NATIVE"
echo "[*] ASAN binary: ${BINARY_ASAN:-not found}"

# Step 3: Setup fuzzing directory
echo "[*] Step 3: Setting up fuzzing directories"

FUZZ_DIR="$WORK_DIR/fuzz_$RUN_MODE"
mkdir -p "$FUZZ_DIR/in"

# Copy seeds
cp "$SEEDS_DIR"/* "$FUZZ_DIR/in/" 2>/dev/null || echo "[!] No seeds found"
echo "[*] Seeds copied: $(ls $FUZZ_DIR/in | wc -l) files"

# Select binary variant
if [ $USE_ASAN -eq 1 ] && [ -n "$BINARY_ASAN" ]; then
    BINARY_TO_USE="$BINARY_ASAN"
    echo "[*] Using ASAN-instrumented binary"
else
    BINARY_TO_USE="$BINARY_NATIVE"
    echo "[*] Using native binary"
fi

# Copy binary to fuzzing directory
cp "$BINARY_TO_USE" "$FUZZ_DIR/$PUT"
chmod +x "$FUZZ_DIR/$PUT"

# Step 4: Preprocessing (if using UAFuzz)
if [ "$RUN_MODE" = "uafuzz" ]; then
    echo "[*] Step 4: Running preprocessing (BINSEC metrics)"
    
    cd "$FUZZ_DIR"
    
    # Determine if we can use --no_ida (pre-generated IDA artifacts)
    IDA_FLAG=""
    if [ ! $USE_IDA -eq 1 ] || [ -f "$IDA_DIR/$CVE_NAME.ida" ]; then
        IDA_FLAG="--no_ida"
        echo "[*] Using pre-generated IDA artifacts (--no_ida flag)"
    fi
    
    python "$SCRIPTS/preprocess.py" $IDA_FLAG -f "$PUT" -v "$VALGRIND_TARGET" -o "$FUZZ_DIR" 2>&1 | tee preprocess.log
    
    # Verify metrics were generated
    if [ -f "$FUZZ_DIR/distances.txt" ]; then
        echo "[*] Preprocessing successful - metrics generated"
        echo "[*] Distance file: $(wc -l < $FUZZ_DIR/distances.txt) lines"
    else
        echo "[!] Warning: distances.txt not generated"
        cat preprocess.log | tail -20
    fi
    
    # List generated metrics
    echo "[*] Metrics generated:"
    ls -lh "$FUZZ_DIR"/*.txt 2>/dev/null | awk '{print "    " $9 " (" $5 ")"}'
    
elif [ "$RUN_MODE" = "aflqemu" ]; then
    echo "[*] Step 4: Using AFL-QEMU mode (no preprocessing needed)"
else
    echo "[*] Step 4: Skipping preprocessing"
fi

# Step 5: Run fuzzing
echo "[*] Step 5: Starting fuzzer (timeout: $TIMEOUT_MIN minutes)"
echo "=========================================="

cd "$FUZZ_DIR"

case "$RUN_MODE" in
    aflqemu)
        echo "[*] Running AFL-QEMU fuzzing..."
        # Extract command from CVE script
        CMD_PATTERN=$(grep "timeout -sHUP.*-f" "$CVE_SCRIPT" | head -1)
        echo "[*] Command pattern from CVE script: $CMD_PATTERN"
        
        if [ "$TIMEOUT_MIN" = "0" ]; then
            python "$SCRIPTS/run_afl.py" \
                -f "$FUZZ_DIR/$PUT" \
                -Q \
                -i "$FUZZ_DIR/in" \
                -o "run" \
                -r "$FUZZ_DIR/$PUT" \
                -to "$TIMEOUT_MIN" \
                2>&1 | tee run.log || true
        else
            timeout -sHUP "${TIMEOUT_MIN}m" python "$SCRIPTS/run_afl.py" \
                -f "$FUZZ_DIR/$PUT" \
                -Q \
                -i "$FUZZ_DIR/in" \
                -o "run" \
                -r "$FUZZ_DIR/$PUT" \
                -to "$TIMEOUT_MIN" \
                2>&1 | tee run.log || true
        fi
        ;;
    
    uafuzz)
        echo "[*] Running UAFuzz (BINSEC-directed) fuzzing..."
        if [ ! -f "$FUZZ_DIR/$PUT.tgt" ]; then
            echo "[ERROR] Target file not generated: $FUZZ_DIR/$PUT.tgt"
            ls -la "$FUZZ_DIR" | grep -E "tgt|tar"
            exit 1
        fi
        
        # Determine if we can use --no_ida flag
        IDA_FLAG=""
        if [ ! $USE_IDA -eq 1 ] || [ -f "$IDA_DIR/$CVE_NAME.ida" ]; then
            IDA_FLAG="--no_ida"
        fi
        
        if [ "$TIMEOUT_MIN" = "0" ]; then
            python "$SCRIPTS/run_uafuzz.py" \
                -f "$FUZZ_DIR/$PUT" \
                -M fuzz \
                -i "$FUZZ_DIR/in" \
                -o run \
                -r "$FUZZ_DIR/$PUT" \
                -I uafuzz \
                -T "$FUZZ_DIR/$PUT.tgt" \
                -to "$TIMEOUT_MIN" \
                $IDA_FLAG \
                2>&1 | tee run.log || true
        else
            timeout -sHUP "${TIMEOUT_MIN}m" python "$SCRIPTS/run_uafuzz.py" \
                -f "$FUZZ_DIR/$PUT" \
                -M fuzz \
                -i "$FUZZ_DIR/in" \
                -o run \
                -r "$FUZZ_DIR/$PUT" \
                -I uafuzz \
                -T "$FUZZ_DIR/$PUT.tgt" \
                -to "$TIMEOUT_MIN" \
                $IDA_FLAG \
                2>&1 | tee run.log || true
        fi
        ;;
    
    *)
        echo "[ERROR] Unknown mode: $RUN_MODE"
        exit 1
        ;;
esac

echo "=========================================="

# Step 6: Collect and report results
echo "[*] Step 6: Collecting results"

# Find the actual results directory (may be nested)
RESULTS_DIR=$(find "$FUZZ_DIR" -name "fuzzer_stats" -type f 2>/dev/null | head -1 | xargs dirname)

if [ -z "$RESULTS_DIR" ] || [ ! -d "$RESULTS_DIR" ]; then
    echo "[!] Results directory not found"
    echo "[*] Checking directory structure:"
    find "$FUZZ_DIR" -maxdepth 3 -type d | head -10
else
    echo "[*] Results directory: $RESULTS_DIR"
    
    # Parse AFL stats
    if [ -f "$RESULTS_DIR/fuzzer_stats" ]; then
        echo ""
        echo "[*] Fuzzer statistics:"
        cat "$RESULTS_DIR/fuzzer_stats"
    fi
    
    # Count crashes
    if [ -d "$RESULTS_DIR/crashes" ]; then
        CRASH_COUNT=$(find "$RESULTS_DIR/crashes" -name "id:*" | wc -l)
        echo ""
        echo "[*] Crashes found: $CRASH_COUNT"
        
        if [ $CRASH_COUNT -gt 0 ]; then
            echo "[*] First 3 crash samples:"
            find "$RESULTS_DIR/crashes" -name "id:*" | head -3 | while read crash_file; do
                echo "    $(basename $crash_file)"
            done
        fi
    fi
    
    # Count paths/queue
    if [ -d "$RESULTS_DIR/queue" ]; then
        QUEUE_COUNT=$(find "$RESULTS_DIR/queue" -name "id:*" | wc -l)
        echo "[*] Queue paths found: $QUEUE_COUNT"
    fi
fi

echo ""
echo "[*] Fuzzing complete!"
echo "[*] All results saved to: $FUZZ_DIR"
echo "[*] To continue fuzzing:"
echo "    cd $FUZZ_DIR && find . -name '*.tgt' -o -name 'fuzzer_stats' | head -5"
