#!/bin/bash
set -e

PUT="example"
runmode=$1
timeout=$2
targets=$3

# Resolve script directory to ensure correct relative paths
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Resolve repo root and ensure UAFUZZ_PATH is set
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
export UAFUZZ_PATH="${UAFUZZ_PATH:-"$(cd "$SCRIPT_DIR/.." && pwd)"}"

# Checkout source code (relative to this script)
cd "$SCRIPT_DIR/$PUT"; export SUBJECT=$PWD

# Compile source code
rm -f example example-asan
gcc -g -m32 example.c -o example
gcc -g -m32 -fsanitize=address example.c -o example-asan

# Select target binary (default: non-ASAN). Set USE_ASAN=1 to use ASAN build.
BIN_TARGET="example"
if [ "${USE_ASAN}" = "1" ]; then
	BIN_TARGET="example-asan"
	echo "[DEBUG] Using ASAN target binary: ${BIN_TARGET}"
fi

# Prepare working directories
cd "$SUBJECT"; rm -rf "obj-$runmode"; mkdir "obj-$runmode"; export FUZZ_DIR="$SUBJECT/obj-$runmode"; cd "$FUZZ_DIR"
# Allow custom seed via SEED_CONTENT env (default empty)
mkdir -p in
echo -n "${SEED_CONTENT:-}" > in/in

# Helper: run with optional timeout (0 = no timeout)
run_with_timeout() {
	local minutes="$1"; shift
	if [ "$minutes" = "0" ]; then
		"$@"
	else
		timeout -sHUP "${minutes}m" "$@"
	fi
}

# Fuzzing
if [ "$runmode" = "aflqemu" ]; then
	export AFL_PATH=${AFL_PATH:-$REPO_ROOT/third_party/afl-2.52b}
	export AFL=${AFL:-$AFL_PATH}
	export PATH="$AFL_PATH:$PATH"
	# Always copy selected target binary into FUZZ_DIR as 'example'
	cp "$SUBJECT/$BIN_TARGET" "$FUZZ_DIR/example"
	run_with_timeout "$timeout" "$UAFUZZ_PATH/scripts/run_afl.py" -f "$FUZZ_DIR/example" -Q -i "$FUZZ_DIR/in" -o run -r "$FUZZ_DIR/example @@" -to "$timeout"
elif [ "$runmode" = "aflgo" ]; then
	SECONDS=0
	export AFL_PATH=${AFL_PATH:-$HOME/aflgo}; export AFLGO=$AFL_PATH
	if [ ! -x "$AFLGO/afl-clang-fast" ]; then
		echo "AFLGo not found at $AFLGO (missing afl-clang-fast). Install AFLGo or set AFL_PATH."
		exit 1
	fi
	mkdir -p temp; export TMP_DIR="$FUZZ_DIR/temp"
	export CC="$AFLGO/afl-clang-fast"; export CXX="$AFLGO/afl-clang-fast++"
	export LDFLAGS=-lpthread
	export ADDITIONAL="-targets=$TMP_DIR/BBtargets.txt -outdir=$TMP_DIR -flto -fuse-ld=gold -Wl,-plugin-opt=save-temps"
	echo $'example.c:20\nexample.c:24\nexample.c:11\nexample.c:26' > "$TMP_DIR/BBtargets.txt"
	cd "$SUBJECT"; "$CC" example.c $ADDITIONAL -g -o example
	cat "$TMP_DIR/BBnames.txt" | rev | cut -d: -f2- | rev | sort | uniq > "$TMP_DIR/BBnames2.txt" && mv "$TMP_DIR/BBnames2.txt" "$TMP_DIR/BBnames.txt"
	cat "$TMP_DIR/BBcalls.txt" | sort | uniq > "$TMP_DIR/BBcalls2.txt" && mv "$TMP_DIR/BBcalls2.txt" "$TMP_DIR/BBcalls.txt"
	"$AFLGO/scripts/genDistance.sh" "$SUBJECT" "$TMP_DIR" example
	"$CC" example.c -distance="$TMP_DIR/distance.cfg.txt" -g -o example
	cd "$FUZZ_DIR"; cp "$SUBJECT/example" .
	pp_aflgo_time=$SECONDS; echo "pp_aflgo_time: $pp_aflgo_time (s)."
	run_with_timeout "$timeout" "$AFLGO/afl-fuzz" -m none -z exp -c 45m -i in -o out "$FUZZ_DIR/example" @@
elif [ "$runmode" = "aflgob" ] || [ "$runmode" = "heb" ] || [ "$runmode" = "uafuzz" ]; then
	# Use selected target binary for UAFuzz pipeline as 'example'
	cp "$SUBJECT/$BIN_TARGET" "$PUT"; cp "$targets" .
	
	# Debug: Show preprocessing input
	echo "[DEBUG] Running preprocessing..."
	echo "[DEBUG] Binary: $FUZZ_DIR/$PUT"
	echo "[DEBUG] Valgrind report: $targets"
	echo "[DEBUG] Output dir: $FUZZ_DIR"
	echo "[DEBUG] Working dir: $(pwd)"
	
	# Use --no_ida flag to skip IDA and use pre-generated artifacts from $UAFBENCH_PATH/ida/
	"$UAFUZZ_PATH/scripts/preprocess.py" -f "$PUT" -v "$targets" -o "$FUZZ_DIR" --no_ida
	
	# Debug: Check metrics files
	echo "[DEBUG] Checking generated metrics files..."
	if [ -f "$FUZZ_DIR/distances.txt" ]; then
		echo "[DEBUG] ✓ distances.txt found ($(wc -l < "$FUZZ_DIR/distances.txt") lines)"
		echo "[DEBUG] First 3 lines of distances.txt:"
		head -3 "$FUZZ_DIR/distances.txt" | sed 's/^/[DEBUG] /'
	else
		echo "[DEBUG] ✗ distances.txt NOT found!"
	fi
	
	if [ -f "$FUZZ_DIR/func_distances.txt" ]; then
		echo "[DEBUG] ✓ func_distances.txt found ($(wc -l < "$FUZZ_DIR/func_distances.txt") lines)"
		echo "[DEBUG] First 3 lines:"
		head -3 "$FUZZ_DIR/func_distances.txt" | sed 's/^/[DEBUG] /'
	else
		echo "[DEBUG] ✗ func_distances.txt NOT found!"
	fi
	
	if [ -f "$FUZZ_DIR/cut_edges.txt" ]; then
		echo "[DEBUG] ✓ cut_edges.txt found ($(wc -l < "$FUZZ_DIR/cut_edges.txt") lines)"
	else
		echo "[DEBUG] ✗ cut_edges.txt NOT found!"
	fi
	
	if [ -f "$FUZZ_DIR/$PUT.tgt_uaf" ]; then
		echo "[DEBUG] ✓ $PUT.tgt_uaf found:"
		cat "$FUZZ_DIR/$PUT.tgt_uaf" | sed 's/^/[DEBUG] /'
	else
		echo "[DEBUG] ✗ $PUT.tgt_uaf NOT found!"
	fi
	
	echo "[DEBUG] Starting UAFuzz fuzzer..."
	"$UAFUZZ_PATH/scripts/run_uafuzz.py" -f "$FUZZ_DIR/$PUT" -M fuzz -i "$FUZZ_DIR/in" -o run -r "$FUZZ_DIR/$PUT @@" -I "$runmode" -T "$FUZZ_DIR/$PUT.tgt" -to "$timeout" --no_ida
fi
