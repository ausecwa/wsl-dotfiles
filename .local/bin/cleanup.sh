#!/bin/bash
set -e

echo "[clean]"
sudo rm -rf /tmp/*
rm -rf ~/.cache/*
rm -rf ~/.local/share/virtualenv
rm -rf ~/.pylint.d
rm -rf ~/.vscode-server/data/CachedExtensionVSIXs
rm -f ~/.*_history
rm -f ~/.viminfo
echo
echo "[apt clean]"
sudo apt autoremove --purge
echo
sudo apt-get autoclean
sudo apt-get clean
echo
echo "[trim]"
sudo fstrim -av
echo 'OK'
