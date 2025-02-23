#!/bin/bash

set -e

if [[ "$RUNNER_OS" == "Linux" ]]; then
  sudo apt-get update && sudo apt-get install -y \
    bison \
    flex \
    gperf \
    help2man \
    libtool-bin \
    meson \
    ninja-build \
    texinfo
elif [[ "$RUNNER_OS" == "macOS" ]]; then
  brew install \
    autoconf \
    automake \
    bash \
    binutils \
    gawk \
    gnu-sed \
    gnu-tar \
    help2man \
    libtool \
    make \
    meson \
    ncurses \
    ninja \
    texinfo
elif [[ "$RUNNER_OS" == "Windows" ]]; then
  pacman -S --noconfirm \
    git \
    make \
    autoconf \
    automake \
    libtool \
    gperf \
    gawk \
    flex \
    bison \
    texinfo \
    help2man \
    python3 \
    patch \
    unzip \
    msys2-runtime-devel
fi
