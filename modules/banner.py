#!/usr/bin/python3
# This code write by Ms.nope
import os
import time
import sys
#############################3
class color:
      green = '\033[92m'
      red = '\033[91m'
      End = '\033[0m'
      org = '\033[33m'
      darkblue = '\033[34m'
      blue = '\033[96m'
def cls():
    os.system("clear")
def banner():
    os.system("printf '\033]2;Hack\a'")
    print(color.green + """
        ███████████████████████████
        ███████▀▀▀░░░░░░░▀▀▀███████
        ████▀░░░░░░░░░░░░░░░░░▀████
        ███│░░░░░░░░░░░░░░░░░░░│███
        ██▌│░░░░░░░░░░░░░░░░░░░│▐██
        ██░└┐░░░░░░░░░░░░░░░░░┌┘░██
        ██░░└┐░░░░░░░░░░░░░░░┌┘░░██
        ██░░┌┘▄▄▄▄▄░░░░░▄▄▄▄▄└┐░░██""" + color.red + """   ░▒▓█ Hack-Framework █▓▒░""" + color.green + """
        ██▌░│██████▌░░░▐██████│░▐██
        ███░│▐███▀▀░░▄░░▀▀███▌│░███
        ██▀─┘░░░░░░░▐█▌░░░░░░░└─▀██
        ██▄░░░▄▄▄▓░░▀█▀░░▓▄▄▄░░░▄██
        ████▄─┘██▌░░░░░░░▐██└─▄████
        █████░░▐█─┬┬┬┬┬┬┬─█▌░░█████
        ████▌░░░▀┬┼┼┼┼┼┼┼┬▀░░░▐████
        █████▄░░░└┴┴┴┴┴┴┴┘░░░▄█████
        ███████▄░░░░░░░░░░░▄███████
        ██████████▄▄▄▄▄▄▄██████████
        ███████████████████████████""" + color.End)
def ext():
    cls()
    print(color.green + "Exiting..." + color.End)
    sys.exit()
def info():
    print(color.org)
    os.system("figlet Ms.nope")
    print(color.End)
    print(color.green + "(This code write by " + color.blue + "Ms.nope" + color.green + ")" + color.End)
    print(color.red + "Dont Forget to check my github: " + color.darkblue + "https://github.com/msprogrammer2938" + color.End)
    time.sleep(2)
    try1()
def try1():
    tryagain = input("\npress Enter... ")
    if tryagain == '':
      os.system("hack")
    else:
        os.system("hack")
