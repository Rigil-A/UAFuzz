#docker run -it  --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -v C:\IDAPro6.6full\IDAPro6.6:/ida uafuzz-env
FROM ubuntu:16.04

LABEL maintainer="UAFuzz-Repro"

RUN apt-get update && apt-get install -y \
    software-properties-common \
    build-essential \
    curl \
    wget \
    git \
    sudo \
    python2.7 \
    python2.7-dev \
    python-pip \
    perl \
    cpanminus \
    libgraphviz-perl \
    libexpat1-dev \
    libssl-dev \
    libelf-dev \
    gcc-multilib g++-multilib \
    zlib1g-dev \
    libglib2.0-dev \
    libpixman-1-dev \
    libtool \
    automake \
    autoconf \
    pkg-config \
    valgrind \
    graphviz \
    cmake \
    unzip \
    libgmp-dev \
    libtool \
    m4 \
    opam \
    libfindlib-ocaml-dev \
    ca-certificates \
    menhir \
    libzmq3-dev \
    llvm-14-dev llvm-14-tools \
    && rm -rf /var/lib/apt/lists/*

# -----------------------------
# Install piqi Linux binary from local piqi-binary repo
# -----------------------------
COPY piqi-binary/Linux-x86_64/piqi /usr/local/bin/piqi
RUN chmod +x /usr/local/bin/piqi

# -----------------------------
# 2. Install Graph-Easy
# -----------------------------
RUN cpanm Graph::Easy

# -----------------------------
# 3. Install OPAM 2.0.9 (stable for Ubuntu 16.04)
# -----------------------------
RUN wget https://github.com/ocaml/opam/releases/download/2.0.9/opam-2.0.9-x86_64-linux \
    -O /usr/local/bin/opam && \
    chmod +x /usr/local/bin/opam

# Init opam (no sandbox due to Xenial limitation)
RUN opam init --disable-sandboxing -y \
    && bash -c "source ~/.profile"


# -----------------------------
# 4. Install OCaml 4.05.0 (for UAFuzz compatibility)
# -----------------------------
RUN opam switch create 4.05.0 ocaml-base-compiler.4.05.0 --yes
RUN bash -c "source ~/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true"
RUN opam install -y ocamlfind ocamlgraph
ENV OPAMSWITCH=4.05.0
ENV CAML_LD_LIBRARY_PATH=/root/.opam/4.05.0/lib/stublibs
ENV PATH="/root/.opam/4.05.0/bin:${PATH}"

# -----------------------------
# 5. Download and extract binsec prebuilt binary
# -----------------------------
RUN mkdir -p /opt/binsec && \
    wget https://github.com/binsec/binsec/releases/download/0.10.1/binsec-0.10.1.tbz -O /opt/binsec/binsec-0.10.1.tbz && \
    tar -xvjf /opt/binsec/binsec-0.10.1.tbz -C /opt/binsec && \
    rm /opt/binsec/binsec-0.10.1.tbz

ENV BINSEC_PATH=/opt/binsec

# -----------------------------
# 6. Build AFL 2.52b QEMU mode
# -----------------------------
RUN wget https://github.com/google/AFL/archive/v2.57b.tar.gz -O /tmp/afl-2.57b.tar.gz && \
    tar -xzf /tmp/afl-2.57b.tar.gz -C /opt && \
    mv /opt/AFL-2.57b /opt/afl && \
    rm /tmp/afl-2.57b.tar.gz && \
    cd /opt/afl && make && make install && \
    sed -i 's|2.10.0|2.12.0|g;s|http://download.qemu-project.org/qemu-2.10.0.tar.xz|https://archive.org/download/qemu-2.12.0.tar.xz/qemu-2.12.0.tar.xz|g;s|http://download.qemu.org/qemu-2.12.0.tar.xz|https://archive.org/download/qemu-2.12.0.tar.xz/qemu-2.12.0.tar.xz|g' /opt/afl/qemu_mode/build_qemu_support.sh

 # Build QEMU mode
RUN wget https://ftp2.osuosl.org/pub/blfs/conglomeration/qemu/qemu-2.12.0.tar.bz2 -O /opt/afl/qemu_mode/qemu-2.12.0.tar.bz2
# Extract and repackage as .tar.xz so the script finds it
RUN apt-get update && apt-get install -y xz-utils
RUN cd /opt/afl/qemu_mode && bunzip2 qemu-2.12.0.tar.bz2 && xz qemu-2.12.0.tar
# Patch build_qemu_support.sh to skip download if tarball exists
RUN sed -i '1i if [ -f "/opt/afl/qemu_mode/qemu-2.12.0.tar.xz" ]; then echo "QEMU tarball already present, skipping download."; exit 0; fi' /opt/afl/qemu_mode/build_qemu_support.sh
RUN sed -i 's|http://download.qemu-project.org/qemu-2.10.0.tar.xz|/opt/afl/qemu_mode/qemu-2.12.0.tar.xz|g;s|http://download.qemu.org/qemu-2.12.0.tar.xz|/opt/afl/qemu_mode/qemu-2.12.0.tar.xz|g' /opt/afl/qemu_mode/build_qemu_support.sh
RUN apt-get update && apt-get install -y libtool-bin bison
RUN cd /opt/afl/qemu_mode && \
    ./build_qemu_support.sh

ENV AFL_PATH=/opt/afl

# -----------------------------
# 7. Install QEMU for instrumentation
# -----------------------------
RUN apt-get update && apt-get install -y qemu-system qemu-user qemu-user-static

# -----------------------------
# 8. Build UAFuzz
# -----------------------------
RUN git clone https://github.com/strongcourage/uafuzz.git /opt/uafuzz

# Export IDA_PATH (on host you must mount an IDA folder to /ida)
# Example: docker run -v C:\IDA:/ida ...
ENV IDA_PATH=/ida

# -----------------------------
# 9. Export paths for UAFuzz
# -----------------------------
ENV PATH="/opt/uafuzz:${PATH}"
ENV UAFUZZ_HOME=/opt/uafuzz

WORKDIR /opt/uafuzz

# Installation script (if exists)
RUN chmod +x install.sh || true

# NOTE: We do NOT run install.sh here because IDA is required for full install
# and IDA will be mounted from host at runtime.

CMD ["/bin/bash"]
