#!/bin/bash
set -e

echo "Attempting to upgrade packages..."
sudo apt-get update
echo
echo "[dist-upgrade]"
sudo apt-get dist-upgrade
echo
echo "[zsh]"
upgrade-zsh.sh
echo
cleanup.sh
