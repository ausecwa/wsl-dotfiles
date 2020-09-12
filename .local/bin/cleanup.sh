#!/bin/bash
set -e

echo "[clean]"
sudo rm -rf /tmp/*
rm -rf ~/.cache/*
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
