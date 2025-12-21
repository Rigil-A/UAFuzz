# UAFBench CVE Integration Guide

This document describes how to integrate real-world CVE binaries from UAFBench into the UAFuzz fuzzing pipeline.

## Overview

UAFBench provides a standardized set of 13+ real-world Use-After-Free (UAF) and Double-Free (DF) bugs with:
- Source code snapshots at vulnerable commits
- Valgrind traces identifying UAF/DF locations  
- Pre-generated IDA Pro databases for static analysis
- Seed inputs for fuzzing
- Setup scripts for building binaries

## Quick Start

### 1. Clone UAFBench Repository

```bash
cd /tmp
git clone https://github.com/strongcourage/uafbench.git
export UAFBENCH_PATH=/tmp/uafbench
```

### 2. Run a Single CVE with UAFuzz

```bash
cd /home/khoile/uafuzz

# Test CVE-2016-3189 (bzip2recover - UAF) with 5 minute timeout
UAFUZZ_PATH=/home/khoile/uafuzz UAFBENCH_PATH=/tmp/uafbench \
  ./run_cve_fuzzing.sh CVE-2016-3189 uafuzz 5 --no_ida

# Or use AFL-QEMU mode (no static analysis):
UAFUZZ_PATH=/home/khoile/uafuzz UAFBENCH_PATH=/tmp/uafbench \
  ./run_cve_fuzzing.sh CVE-2016-3189 aflqemu 5
```

### 3. Available CVEs in UAFBench

| CVE ID | Program | Bug Type | Crashes | Command |
|:------:|:-------:|:--------:|:-------:|:-------:|
| CVE-2016-3189 | bzip2recover | UAF | ✓ | `bzip2recover @@` |
| CVE-2016-4487 | cxxfilt | UAF | ✓ | `cxxfilt < @@` |
| CVE-2017-10686 | nasm | UAF | ✓ | `nasm -f bin @@ -o /dev/null` |
| CVE-2018-10685 | lrzip | UAF | ✗ | `lrzip -t @@` |
| CVE-2018-11416 | jpegoptim | DF | ✗ | `jpegoptim @@` |
| CVE-2018-11496 | lrzip | UAF | ✗ | `lrzip -t @@` |
| CVE-2018-20623 | readelf | UAF | ✗ | `readelf -a @@` |
| CVE-2019-20633 | patch | DF | ✗ | `patch -Rf < @@` |
| CVE-2019-6455 | rec2csv | DF | ✗ | `rec2csv @@` |
| giflib-bug-74 | gifsponge | DF | ✗ | `gifsponge < @@` |
| gifsicle-issue-122 | gifsicle | DF | ✗ | `gifsicle @@ test.gif -o /dev/null` |
| mjs-issue-73 | mjs | UAF | ✗ | `mjs -f @@` |
| mjs-issue-78 | mjs | UAF | ✗ | `mjs -f @@` |
| yasm-issue-91 | yasm | UAF | ✗ | `yasm @@` |

(✓ = easily triggered, ✗ = hard to reproduce)

## Wrapper Script: run_cve_fuzzing.sh

The `run_cve_fuzzing.sh` script automates the full fuzzing pipeline for any CVE in UAFBench.

### Usage

```bash
./run_cve_fuzzing.sh <CVE_NAME> <MODE> <TIMEOUT_MIN> [--no_ida] [--use_asan]
```

### Parameters

- **CVE_NAME**: CVE identifier (e.g., `CVE-2016-3189`)
- **MODE**: Fuzzing mode
  - `uafuzz`: BINSEC-directed fuzzing (requires IDA/static analysis)
  - `aflqemu`: AFL-QEMU binary-only fuzzing  
  - `aflgo`: AFLGo directed fuzzing (not yet implemented)
- **TIMEOUT_MIN**: Fuzzing timeout in minutes
- **--no_ida**: Skip IDA Pro and use pre-generated IDA artifacts (faster)
- **--use_asan**: Use ASAN-instrumented binary instead of native

### Workflow Steps

1. **Clone & Compile**: Clones CVE source and compiles both native and ASAN-instrumented binaries
2. **Setup Fuzzing**: Copies seeds to fuzzing directory
3. **Preprocessing** (UAFuzz mode): 
   - Extracts UAF targets from Valgrind trace
   - Generates directed fuzzing metrics (distances, cut edges)
   - Uses BINSEC for CFG analysis
4. **Fuzzing**: Runs AFL/QEMU with appropriate configuration
5. **Results**: Collects and displays statistics

### Example Runs

#### Quick test with AFL-QEMU (no static analysis):
```bash
./run_cve_fuzzing.sh CVE-2016-3189 aflqemu 5
```

#### Directed fuzzing with UAFuzz (using pre-computed IDA):
```bash
./run_cve_fuzzing.sh CVE-2016-3189 uafuzz 60 --no_ida
```

#### With ASAN instrumentation to detect crashes:
```bash
./run_cve_fuzzing.sh CVE-2016-3189 aflqemu 30 --use_asan
```

## Environment Variables

Set these before running fuzzing scripts:

```bash
export UAFUZZ_PATH=/home/khoile/uafuzz
export UAFBENCH_PATH=/tmp/uafbench
export AFL_PATH=$UAFUZZ_PATH/third_party/afl-2.52b
export SCRIPTS=$UAFUZZ_PATH/scripts
export IDA_PATH=/path/to/ida-6.6/idaq  # For full IDA processing
export MALLOC_CHECK_=0  # Avoid hangs during fuzzing
```

## Understanding Results

### Directory Structure

After fuzzing, results are organized as:
```
/tmp/uafuzz_cve_<CVE_NAME>/
├── <CVE_NAME>/              # Cloned source repository
│   ├── obj/                 # Native compiled binary
│   ├── obj-asan/            # ASAN-instrumented binary
│   └── obj-<mode>/          # Build artifacts for fuzzing mode
└── fuzz_<mode>/             # Fuzzing working directory
    ├── in/                  # Seed inputs
    ├── <BINARY>             # Target binary for fuzzing
    ├── <BINARY>.tgt         # UAF targets (UAFuzz mode)
    ├── distances.txt        # Alloc-free-use distances (UAFuzz)
    ├── *.funcs              # Function distance list
    ├── cut_edges.txt        # Cut edges for directed fuzzing
    ├── preprocess.log       # BINSEC preprocessing output
    └── <build>/             # AFL output directory with results
        └── out/             # AFL fuzzer output
            ├── fuzzer_stats # AFL statistics
            ├── queue/       # Test cases (1 per path)
            ├── crashes/     # Crashing inputs
            ├── hangs/       # Timeout inputs
            └── run.log      # Fuzzer console output
```

### Key Files

| File | Purpose |
|------|---------|
| `fuzzer_stats` | AFL statistics (execs, crashes, coverage, etc.) |
| `crashes/id:*` | Crash-inducing test cases |
| `queue/id:*` | All discovered test cases |
| `distances.txt` | Distance from each program location to UAF site (UAFuzz) |
| `cut_edges.txt` | High-value edges for guided fuzzing |
| `preprocess.log` | BINSEC output showing UAF trace extraction |

### Interpreting fuzzer_stats

```
execs_done          # Total number of test case executions
execs_per_sec       # Execution speed
paths_total         # Unique program paths discovered
unique_crashes      # Unique crash inputs found
unique_hangs        # Test cases causing timeouts
max_depth           # Maximum path length
```

## Batch Fuzzing Multiple CVEs

Create a script to fuzz multiple CVEs and compare results:

```bash
#!/bin/bash

CVE_LIST="CVE-2016-3189 CVE-2016-4487 CVE-2017-10686"
TIMEOUT=10
RESULTS_DIR="/tmp/cve_results"

mkdir -p "$RESULTS_DIR"

for cve in $CVE_LIST; do
    echo "Fuzzing $cve..."
    UAFUZZ_PATH=/home/khoile/uafuzz UAFBENCH_PATH=/tmp/uafbench \
      ./run_cve_fuzzing.sh "$cve" uafuzz "$TIMEOUT" --no_ida
    
    # Copy results
    WORK_DIR="/tmp/uafuzz_cve_$cve"
    FUZZER_STATS=$(find "$WORK_DIR" -name "fuzzer_stats" | head -1)
    if [ -f "$FUZZER_STATS" ]; then
        cp "$FUZZER_STATS" "$RESULTS_DIR/${cve}_stats.txt"
    fi
done

# Compare results
echo "Summary of fuzzing results:"
for f in "$RESULTS_DIR"/*_stats.txt; do
    cve=$(basename "$f" _stats.txt)
    crashes=$(grep "unique_crashes" "$f" | awk '{print $3}')
    execs=$(grep "execs_done" "$f" | awk '{print $3}')
    echo "$cve: $crashes crashes in $execs execs"
done
```

## Troubleshooting

### IDA Pro Crashes or Hangs

**Solution**: Use `--no_ida` flag to skip IDA and use pre-generated IDA databases:
```bash
./run_cve_fuzzing.sh CVE-2016-3189 uafuzz 60 --no_ida
```

### Build Failures Due to Dependencies

Some CVEs may require specific libraries. Common solutions:

```bash
# Install additional dependencies
sudo apt-get install flex bison libglib2.0-dev zlib1g-dev libjpeg-dev libpng-dev

# Or compile with minimal flags
CFLAGS="-g -m32" make -j4
```

### AFL Hangs Due to Memory Issues

The `MALLOC_CHECK_=0` setting should prevent hangs:
```bash
export MALLOC_CHECK_=0
./run_cve_fuzzing.sh CVE-2016-3189 aflqemu 60
```

### Slow Fuzzing Speed

- AFL-QEMU mode is inherently slow (~20-30% of native speed)
- For faster fuzzing, use native compilation + ASAN:
  ```bash
  ./run_cve_fuzzing.sh CVE-2016-3189 aflqemu 60 --use_asan
  ```
- Increase timeout to allow more executions

### Cannot Locate Binary After Build

The wrapper searches multiple locations for the compiled binary. If it fails:
1. Check `$WORK_DIR/CVE-NAME/obj/` and `obj-asan/`
2. Ensure the CVE's build script produced an executable
3. Verify the `PUT` variable in the CVE script matches the binary name

## Performance Notes

### Speed Comparison

| Mode | Speed | Overhead | UAF Detection |
|------|-------|----------|---------------|
| Native AFL | 1000 exec/sec | - | Manual ASAN required |
| AFL-QEMU | ~300 exec/sec | 70% slower | Binary-only, slow |
| AFL-QEMU+ASAN | ~150 exec/sec | 85% slower | Automatic crash detection |
| UAFuzz (BINSEC) | ~200 exec/sec | 80% slower | Directed to UAF targets |

### Time-to-Crash Estimates

For bugs marked as "easily triggered" (✓):
- AFL-QEMU: 5-15 minutes
- AFL-QEMU+ASAN: 2-5 minutes  
- UAFuzz: 1-3 minutes

For hard-to-reproduce bugs (✗):
- May require hours of fuzzing
- Consider increasing timeout or seed quality

## Integration with CI/CD

For automated testing pipelines:

```bash
#!/bin/bash
# test_uafuzz_cve.sh - CI/CD test for CVE fuzzing

CVE="$1"
TIMEOUT="${2:-60}"

set -e

# Setup environment
export UAFUZZ_PATH=/home/khoile/uafuzz
export UAFBENCH_PATH=/tmp/uafbench
export MALLOC_CHECK_=0

# Run fuzzing
/home/khoile/uafuzz/run_cve_fuzzing.sh "$CVE" uafuzz "$TIMEOUT" --no_ida

# Check results
WORK_DIR="/tmp/uafuzz_cve_$CVE"
FUZZER_STATS=$(find "$WORK_DIR" -name "fuzzer_stats" | head -1)

if [ ! -f "$FUZZER_STATS" ]; then
    echo "FAIL: No fuzzer_stats found"
    exit 1
fi

# Verify fuzzer ran
EXECS=$(grep "execs_done" "$FUZZER_STATS" | awk '{print $3}')
if [ "$EXECS" -lt 1000 ]; then
    echo "FAIL: Only $EXECS executions (expected > 1000)"
    exit 1
fi

echo "PASS: Fuzzed $CVE with $EXECS executions"
exit 0
```

## References

- **UAFBench Repository**: https://github.com/strongcourage/uafbench
- **UAFuzz Paper**: [Reference information for UAFuzz]
- **AFL Documentation**: https://lcamtuf.coredump.cx/afl/
- **BINSEC**: https://binsec.github.io/

## Next Steps

1. Run multiple CVEs to generate performance baseline
2. Compare directed (UAFuzz) vs undirected (AFL) fuzzing effectiveness
3. Analyze which features of UAFuzz provide the most benefit
4. Integrate findings into production fuzzing pipeline
