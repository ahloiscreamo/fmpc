#!/usr/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BINS=(fmpc fmpc-play fmpc-follower)
DEV=false
INSTALL_DIR="$HOME/.local/bin"

for arg in "$@"; do
    if [[ "$arg" == "--dev" ]]; then
        DEV=true
    elif [[ "$arg" != --* ]]; then
        INSTALL_DIR="$arg"
    fi
done

mkdir -p "$INSTALL_DIR"

$DEV && echo "Dev mode: symlinks created, edits to the repo take effect immediately."

for bin in "${BINS[@]}"; do
    target="$INSTALL_DIR/$bin"
    if $DEV; then
        ln -sf "$SCRIPT_DIR/$bin" "$target"
    else
        cp --remove-destination "$SCRIPT_DIR/$bin" "$target"
    fi
    chmod +x "$SCRIPT_DIR/$bin"
done

echo "Done! Installed to \"$INSTALL_DIR\". Make sure it is in your PATH."
