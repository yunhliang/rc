#!/bin/sh
RCHOME=~/.rc

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[ -e "~/.rc" ] && die "~/.rc already exists."

git clone https://github.com/JustinTW/rc.git "$RCHOME" --branch develop
cd "$RCHOME"
git submodule update --init

./install.sh

echo "vgod's rc is installed."
