#!/bin/sh
clear

export DOTNET_ROOT=/usr/share/dotnet-arm64
export PATH=$PATH:/usr/share/dotnet-arm64

echo ""
echo "Welcome to NadekoBot pi installer. Downloading the latest installer..."
root=$(pwd)

rm "$root/n-menu.sh" 1>/dev/null 2>&1
wget -N https://github.com/HokutoChen/NadekoScript/raw/main/n-menu.sh

bash n-menu.sh
cd 
rm $root/n-menu.sh
exit 0
