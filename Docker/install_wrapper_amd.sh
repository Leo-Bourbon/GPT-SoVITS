#!/bin/env bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
cd "$SCRIPT_DIR" || exit 1
cd .. || exit 1


export TERM=xterm-256color

bash install.sh --device "ROCM" --source HF

pip cache purge

pip show torch

rm -rf /tmp/* /var/tmp/*

rm -rf "$HOME/miniconda3/pkgs"

mkdir -p "$HOME/miniconda3/pkgs"

rm -rf /root/.conda /root/.cache
