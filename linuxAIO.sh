#!/bin/sh
clear
echo ""
echo "Welcome to NadekoBot pi installer. Downloading the latest installer..."
root=$(pwd)

rm "$root/n-menu.sh" 1>/dev/null 2>&1
wget -N https://github.com/HokutoChen/NadekoScript/raw/main/n-menu.sh

bash n-menu.sh
cd 
rm $root/n-menu.sh
exit 0
