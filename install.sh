#!/usr/bin/bash
# This code write by Ms.nope
prinf '\033]2;Installing\a'
clear
echo "Installing..."
sleep 2
sudo apt install python
sudo apt install python3
sudo apt install pip
pip install requirements.txt
sleep 2
clear
echo "Finish! Installing..."
sleep 2
chmod +x hack
echo ""
echo "
usage:
     ./hack"
echo ""
exit 1
