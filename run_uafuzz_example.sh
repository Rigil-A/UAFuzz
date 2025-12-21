#!/bin/bash
# Complete UAFuzz example runner with proper environment setup
set -e

cd /home/khoile/uafuzz/tests/example
source /home/khoile/uafuzz/uafuzz.env

# Clean and prepare
TEST_DIR="example_working_test"
rm -rf "$TEST_DIR"
mkdir -p "$TEST_DIR"
cd "$TEST_DIR"

# Copy required files
cp ../example .
cp /home/khoile/uafuzz/tests/ida/example/callgraph.dot .
cp /home/khoile/uafuzz/tests/ida/example/example.ida_orig .
mkdir -p in
echo "" > in/seed

# Pre-set environment variables that QEMU needs
export TARGETS_ENV_VAR=/home/khoile/uafuzz/tests/example/uafuzz/example.tgt
export UAF_ENV_VAR=/home/khoile/uafuzz/tests/example/uafuzz/example.tgt_uaf
export BB_DISTANCE_ENV_VAR="$PWD/distances.txt"
export CUTEDGES_ENV_VAR="$PWD/cut_edges.txt"
export AFL_SKIP_BIN_CHECK=1

echo "=== Running UAFuzz Preprocessing ==="
# Run BINSEC to generate distance files
$UAFUZZ_PATH/binsec/src/binsec \
  -ida -isa x86 -quiet \
  -ida-o-ida /home/khoile/uafuzz/tests/ida/example/example.ida \
  -ida-loglevel result \
  -uafuzz -uafuzz-loglevel result \
  -uafuzz-M fuzz \
  -uafuzz-i "$PWD/in" \
  -uafuzz-o "$PWD/out" \
  -uafuzz-I uafuzz \
  -uafuzz-r "$PWD/example @@" \
  -uafuzz-to 50 \
  -uafuzz-T "$TARGETS_ENV_VAR"

echo ""
echo "=== UAFuzz Analysis Complete ==="
echo "Generated files:"
ls -lh distances.txt func_distances.txt cut_edges.txt 2>/dev/null || echo "Files generated"
echo ""
echo "Distance metrics (first 5 lines):"
head -5 distances.txt
echo ""
echo "Cut edges:"
cat cut_edges.txt
echo ""
echo "Check fuzzing results in: $PWD/out/"

# Manually invoke afl-fuzz with explicit argv to avoid argv being empty in forkserver
echo ""
echo "=== Running afl-fuzz (manual) ==="
cd /home/khoile/uafuzz/tests/example/example_working_test
export AFL_SKIP_BIN_CHECK=1
export AFL_QEMU_DEBUG=1
export AFL_NOCPU_AFFINITY=1
"$AFL"/afl-fuzz -Q -m none -i "$PWD/in" -o "$PWD/out" -- "$PWD/example" @@
