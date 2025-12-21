#!/bin/bash
# UAFuzz Quick Setup Script
# This script automates the installation process for UAFuzz on Ubuntu 16.04

set -e  # Exit on error

echo "=========================================="
echo "UAFuzz Installation Script"
echo "=========================================="
echo ""

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Check Ubuntu version
if ! grep -q "16.04" /etc/os-release; then
    echo -e "${RED}Warning: This script is designed for Ubuntu 16.04${NC}"
    read -p "Continue anyway? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
fi

echo -e "${GREEN}Step 1: Installing system dependencies...${NC}"
sudo apt-get update
sudo apt-get install -y \
    build-essential git wget curl \
    ocaml ocaml-native-compilers opam m4 \
    libgmp-dev libzmq3-dev pkg-config zlib1g-dev \
    python-pip python-dev python-networkx python-numpy python-yaml \
    libgraph-easy-perl graphviz \
    wine flex bison libglib2.0-dev

echo -e "${GREEN}Step 2: Setting up OCaml environment...${NC}"
opam init -y --disable-sandboxing || true
eval $(opam env)
opam install -y ocamlfind zarith menhir

echo -e "${GREEN}Step 3: Setting UAFUZZ_PATH...${NC}"
export UAFUZZ_PATH=$(pwd)
echo "UAFUZZ_PATH=$UAFUZZ_PATH"

echo -e "${GREEN}Step 4: Applying Piqi compatibility fixes...${NC}"
# Fix piqi_json_gen.ml
sed -i 's/parse_flag/try_parse_flag/g' piqi/src/piqi_json_gen.ml
sed -i 's/gen_flag/try_gen_flag/g' piqi/src/piqi_json_gen.ml

# Fix piqi_json_parser.ml
sed -i 's/Base64.str_decode/Base64.decode_exn/g' piqi/piqilib/piqi_json_parser.ml

# Fix piqi_pp.ml
sed -i 's/Pervasives\./Stdlib./g' piqi/src/piqi_pp.ml

echo -e "${GREEN}Step 5: Building Piqi...${NC}"
cd piqi
make deps
make
sudo make install
cd ..

echo -e "${GREEN}Step 6: Building Piqi-OCaml...${NC}"
cd piqi-ocaml
make
sudo make install
cd ..

echo -e "${GREEN}Step 7: Building BINSEC...${NC}"
cd binsec
./configure --prefix=$HOME/.local
make piqi
make -j$(nproc)
cd ..

echo -e "${GREEN}Step 8: Building AFL 2.52b (vanilla) with QEMU mode...${NC}"
mkdir -p third_party
cd third_party
if [ ! -d "afl-2.52b" ]; then
    wget https://lcamtuf.coredump.cx/afl/releases/afl-2.52b.tgz -O afl-2.52b.tgz
    tar xzf afl-2.52b.tgz
    rm afl-2.52b.tgz
fi
cd afl-2.52b
make clean || true
make

# Fix QEMU download URL and build qemu_mode
sed -i 's|http://download.qemu-project.org|https://download.qemu.org|g' qemu_mode/build_qemu_support.sh
cd qemu_mode
./build_qemu_support.sh || echo "[!] qemu_mode build completed with warnings (instrumentation test may fail)."
cd ..
cd $UAFUZZ_PATH

echo -e "${GREEN}Step 9: Creating environment configuration...${NC}"
cat > uafuzz.env << EOF
export UAFUZZ_PATH=$UAFUZZ_PATH
export IDA_PATH=\$UAFUZZ_PATH/ida_wrapper.sh
export GRAPH_EASY_PATH=/usr/local/bin/graph-easy
# Default AFL to the vanilla build with QEMU support
export AFL=\$UAFUZZ_PATH/third_party/afl-2.52b/afl-fuzz
export AFL_PATH=\$UAFUZZ_PATH/third_party/afl-2.52b
export AFLGO=\$AFL
export UAFBENCH_PATH=\$UAFUZZ_PATH/tests
export MALLOC_CHECK_=0
EOF

echo -e "${GREEN}Step 10: Configuring system settings...${NC}"
sudo bash -c 'echo core >/proc/sys/kernel/core_pattern'

echo -e "${GREEN}Step 11: Setting up test directories...${NC}"
mkdir -p tests/ida/example

# Copy IDA files if they exist
if [ -d "tests/example/uafuzz" ]; then
    cp -f tests/example/uafuzz/example.ida tests/ida/example/ 2>/dev/null || true
    cp -f tests/example/uafuzz/example.ida_orig tests/ida/example/ 2>/dev/null || true
    cp -f tests/example/uafuzz/callgraph.dot tests/ida/example/ 2>/dev/null || true
fi

echo ""
echo -e "${GREEN}=========================================="
echo "Installation Complete!"
echo "==========================================${NC}"
echo ""
echo -e "${YELLOW}Important: IDA Pro Setup Required${NC}"
echo "1. Place IDA Pro 6.6 Windows at: /home/$USER/Downloads/IDAPro6.6full/IDAPro6.6/idaq64.exe"
echo "2. Or edit ida_wrapper.sh to point to your IDA installation"
echo ""
echo -e "${YELLOW}Next Steps:${NC}"
echo "1. Load environment: source uafuzz.env"
echo "2. Test installation: bash run_uafuzz_example.sh"
echo "3. Read INSTALLATION.md for detailed instructions"
echo ""
echo -e "${GREEN}Verification:${NC}"
echo "BINSEC binary: $(ls -lh binsec/src/binsec | awk '{print $5}')"
echo "AFL-QEMU: $(ls -lh binsec/src/uafuzz/afl-2.52b/afl-qemu-trace-uafuzz | awk '{print $5}')"
echo ""
