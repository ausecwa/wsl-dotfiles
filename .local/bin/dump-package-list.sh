#!/bin/bash
REPO="$HOME/github/wsl-dotfiles"

echo "Dumping package list..."
pacman -Qqn > "$REPO/packages.txt"
pacman -Qqm > "$REPO/packages_aur.txt"
echo "OK"
