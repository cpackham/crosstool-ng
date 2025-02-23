#!/bin/bash

set -e

if [[ "$RUNNER_OS" == "macOS" ]]; then
  PATH="$PATH:$(brew --prefix)/opt/binutils/bin"
  export PATH
  CPPFLAGS="-I$(brew --prefix)/opt/ncurses/include -I$(brew --prefix)/opt/gettext/include"
  export CPPFLAGS
  LDFLAGS="-L$(brew --prefix)/opt/ncurses/lib -L$(brew --prefix)/opt/gettext/lib"
  export LDFLAGS
fi

./bootstrap
./configure --prefix="$PWD/.local/"
make
make install
tar -cf ct-ng.tar .local/
