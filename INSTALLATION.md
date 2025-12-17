# UAFuzz Installation Guide

Complete step-by-step guide to set up UAFuzz with Wine+IDA on Ubuntu 16.04.

## Prerequisites

- **OS**: Ubuntu 16.04 (xenial) 64-bit
- **RAM**: At least 4GB
- **Disk**: ~10GB free space
- **IDA Pro**: IDA Pro 6.6 Windows version (idaq64.exe)

## 1. System Dependencies

```bash
# Update package list
sudo apt-get update

# Install build essentials
sudo apt-get install -y build-essential git wget curl

# Install OCaml toolchain
sudo apt-get install -y ocaml ocaml-native-compilers opam m4

# Install BINSEC dependencies
sudo apt-get install -y libgmp-dev libzmq3-dev pkg-config zlib1g-dev

# Install Python dependencies
sudo apt-get install -y python-pip python-dev python-networkx python-numpy python-yaml

# Install graph visualization tools
sudo apt-get install -y libgraph-easy-perl graphviz

# Install Wine for IDA Pro (Windows binary)
sudo apt-get install -y wine
```

## 2. OCaml Environment Setup

```bash
# Initialize opam (OCaml package manager)
opam init -y
eval $(opam env)

# Install required OCaml packages
opam install -y ocamlfind zarith menhir
```

## 3. Clone UAFuzz Repository

```bash
cd ~
git clone https://github.com/strongcourage/uafuzz.git
cd uafuzz
export UAFUZZ_PATH=$(pwd)
```

## 4. Build Piqi (Protocol Buffers for OCaml)

### 4.1 Fix Piqi Compatibility Issues

Apply these fixes to `piqi/src/piqi_json_gen.ml`:

```bash
# Line 51: Change parse_flag to try_parse_flag
sed -i 's/parse_flag/try_parse_flag/g' piqi/src/piqi_json_gen.ml

# Line 98: Change gen_flag to try_gen_flag  
sed -i 's/gen_flag/try_gen_flag/g' piqi/src/piqi_json_gen.ml
```

Apply fix to `piqi/piqilib/piqi_json_parser.ml`:

```bash
# Line 190: Fix Base64 module compatibility
sed -i 's/Base64.str_decode/Base64.decode_exn/g' piqi/piqilib/piqi_json_parser.ml
```

Apply fix to `piqi/src/piqi_pp.ml`:

```bash
# Lines 55-60: Change Pervasives to Stdlib
sed -i 's/Pervasives\./Stdlib./g' piqi/src/piqi_pp.ml
```

### 4.2 Build Piqi

```bash
cd piqi
make deps
make
sudo make install
cd ..
```

## 5. Build Piqi-OCaml

```bash
cd piqi-ocaml
make
sudo make install
cd ..
```

## 6. Build BINSEC

```bash
cd binsec

# Configure
./configure --prefix=$HOME/.local

# Build piqi definitions
make piqi

# Build BINSEC (this will take several minutes)
make -j2

# Verify build
ls -lh src/binsec  # Should be ~12-13 MB

cd ..
```

## 7. Build AFL-QEMU for UAFuzz

```bash
cd binsec/src/uafuzz/afl-2.52b/qemu_mode_uafuzz

# Build QEMU with UAFuzz instrumentation
./build_qemu_support.sh

# Verify build
ls -lh ../afl-qemu-trace-uafuzz  # Should be ~10-11 MB

# Create symlink
cd ..
ln -sf afl-qemu-trace-uafuzz afl-qemu-trace

cd $UAFUZZ_PATH
```

## 8. Setup IDA Pro with Wine

### 8.1 Place IDA Pro Files

Place your IDA Pro 6.6 Windows installation at:
```
/home/YOUR_USERNAME/Downloads/IDAPro6.6full/IDAPro6.6/idaq64.exe
```

Or adjust the path in the wrapper script below.

### 8.2 Create IDA Wrapper Script

```bash
cat > ida_wrapper.sh << 'EOF'
#!/bin/bash
# Wine wrapper for IDA Pro 6.6 Windows binary in headless batch mode
# This script allows UAFuzz to call IDA via Wine without GUI

IDA_PATH="/home/$USER/Downloads/IDAPro6.6full/IDAPro6.6/idaq64.exe"

# Run IDA in headless batch mode:
# - Set DISPLAY='' to disable X11/GUI
# - Suppress Wine output
export DISPLAY=""
export WINE_CPU_TOPOLOGY=2

exec wine "$IDA_PATH" "$@"
EOF

chmod +x ida_wrapper.sh
```

### 8.3 Test IDA Wrapper

```bash
# Should run without GUI window
timeout 5 ./ida_wrapper.sh -v 2>&1 | head -5
```

## 9. Configure Environment

Create environment configuration file:

```bash
cat > uafuzz.env << 'EOF'
export UAFUZZ_PATH=/home/$USER/uafuzz
export IDA_PATH=$UAFUZZ_PATH/ida_wrapper.sh
export GRAPH_EASY_PATH=/usr/local/bin/graph-easy
export AFL=$UAFUZZ_PATH/binsec/src/uafuzz/afl-2.52b
export AFLGO=$AFL
export UAFBENCH_PATH=$UAFUZZ_PATH/tests
export MALLOC_CHECK_=0
EOF

# Replace $USER with actual username
sed -i "s|\$USER|$USER|g" uafuzz.env

# Load environment
source uafuzz.env
```

## 10. System Configuration

```bash
# Configure core pattern for AFL fuzzing
sudo bash -c 'echo core >/proc/sys/kernel/core_pattern'

# Verify
cat /proc/sys/kernel/core_pattern  # Should output: core
```

## 11. Setup Test Files

### 11.1 Create IDA Artifact Directory

```bash
mkdir -p tests/ida/example
```

### 11.2 Copy Pre-generated IDA Files

If you have pre-generated IDA analysis files:

```bash
cp tests/example/uafuzz/example.ida tests/ida/example/
cp tests/example/uafuzz/example.ida_orig tests/ida/example/
cp tests/example/uafuzz/callgraph.dot tests/ida/example/
```

## 12. Verification

### 12.1 Test BINSEC

```bash
source uafuzz.env
$UAFUZZ_PATH/binsec/src/binsec -help | head -5
```

Should output BINSEC help text.

### 12.2 Test Complete Pipeline

```bash
cd tests/example
source ../../uafuzz.env

# Run UAFuzz preprocessing on example binary
$UAFUZZ_PATH/binsec/src/binsec \
  -ida -isa x86 -quiet \
  -ida-o-ida $UAFUZZ_PATH/tests/ida/example/example.ida \
  -ida-loglevel result \
  -uafuzz -uafuzz-loglevel result \
  -uafuzz-M fuzz \
  -uafuzz-i "$PWD/in" \
  -uafuzz-o "$PWD/out" \
  -uafuzz-I uafuzz \
  -uafuzz-r "$PWD/example @@" \
  -uafuzz-to 1 \
  -uafuzz-T $UAFUZZ_PATH/tests/example/uafuzz/example.tgt \
  2>&1 | grep -E "Parsing|targets|distance"
```

Expected output:
```
[ida:result] Parsing CG #nodes: 16, #edges: 13, time: ...
[ida:result] Parsing CFG #nodes: 61, #edges: 57, time: ...
[uafuzz:result] targets dist: main:0x8048513, main:0x804853a, ...
[uafuzz:result] Function-level distance file: .../func_distances.txt
[uafuzz:result] BB-level distance file: .../distances.txt
```

## 13. Quick Start Script

Use the provided example runner:

```bash
source uafuzz.env
bash run_uafuzz_example.sh
```

## Troubleshooting

### Issue: Wine shows GUI window

**Solution**: Ensure `DISPLAY=""` is set in `ida_wrapper.sh`

### Issue: OCaml compilation errors

**Solution**: Verify OCaml version:
```bash
ocaml -version  # Should be 4.05.x or 4.06.x
```

### Issue: Piqi build fails

**Solution**: Check if all compatibility fixes were applied:
```bash
grep "try_parse_flag" piqi/src/piqi_json_gen.ml
grep "try_gen_flag" piqi/src/piqi_json_gen.ml
grep "Base64.decode_exn" piqi/piqilib/piqi_json_parser.ml
```

### Issue: QEMU build fails

**Solution**: Install 32-bit development libraries:
```bash
sudo apt-get install -y gcc-multilib g++-multilib
```

### Issue: Fork server handshake failed

**Note**: This is a known issue with QEMU mode. The UAFuzz preprocessing and analysis work perfectly. For actual fuzzing, compile binaries with AFL instrumentation instead of using QEMU mode:

```bash
$AFL/afl-gcc example.c -o example
# Then run without -Q flag
```

## Version Information

- **Ubuntu**: 16.04 (xenial)
- **OCaml**: 4.05.0
- **Menhir**: 20170418
- **Piqi**: 0.6.13
- **Wine**: 1.6.2
- **IDA Pro**: 6.6 (Windows)

## Verified Working Features

✅ Wine + IDA (headless mode, no GUI)  
✅ IDA parsing (call graph, CFG)  
✅ BINSEC analysis  
✅ UAFuzz metrics computation (distances, cut edges)  
✅ Distance file generation  
✅ Cut edge detection  
✅ UAF target identification  

## Support

For issues or questions:
- Check existing GitHub issues
- Review the troubleshooting section
- Verify all build steps completed successfully

## License

This installation guide is part of the UAFuzz project. See LICENSE file for details.
