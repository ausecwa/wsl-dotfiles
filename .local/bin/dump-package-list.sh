#!/bin/bash

echo "Dumping package list..."
pacman -Qqn > packages.txt
pacman -Qqm > packages_aur.txt
echo "OK"
