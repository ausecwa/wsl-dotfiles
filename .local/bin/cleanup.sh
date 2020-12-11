#!/bin/bash

echo '##### Cleaning cache... #####'
rm -rf ~/.cache/*
rm -rf ~/.local/share/virtualenv
rm -rf ~/.npm
rm -rf ~/.pylint.d
rm -rf ~/.vscode-server/data/CachedExtensionVSIXs
rm -rf ~/.vscode-server/data/logs
rm -f ~/.local/share/recently-used.xbel
rm -f ~/.lesshst
rm -f ~/.oh-my-zsh/cache/*
rm -f ~/.viminfo
rm -f ~/.*_history
echo
echo '##### Cleaning system packages... #####'
pacman -Qdtq | sudo pacman -Rs -
yes | sudo pacman -Scc
echo
echo '##### Trimming VHD... #####'
sudo fstrim -av
echo 'OK'
