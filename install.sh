#!/usr/bin/env bash
# This code write by Mr.nope
# Hack-Framework v2.2.2
if [[ "$(id -u)" -ne 0 ]];
then
  echo "
Please, Run This Program as Root!
"
  exit 1
fi
function main() {
     prinf '\033]2;Installing\a'
     clear
     echo "Installing..."
     sleep 2
     apt install python
     apt install python3
     apt install pip
     pip install requirements.txt
     sleep 2
     clear
     echo "Finish! Installing..."
     sleep 2
     chmod +x hack
     cd Update && chmod +x hack
echo "
usage:
     ./hack"
     echo ""
     exit 1
     }
main
