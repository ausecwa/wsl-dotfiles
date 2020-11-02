#!/bin/bash
set -e

echo "Attempting to upgrade packages..."
sudo apt-get update
echo
echo "[dist-upgrade]"
sudo apt-get dist-upgrade
echo
echo "[pip]"
pip install --user -U `pip list --user --outdated --format=freeze | cut -d = -f 1` || true
echo
echo "[zsh]"
upgrade-zsh.sh
echo
cleanup.sh
