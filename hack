#!/usr/bin/python3
# This code write by Mr.nope  
# MIT License

# Copyright (c) 2021 Mr.programmer

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
from modules import banner
import os
import time
import sys
try:
    from colorama import Fore,init
except:
      os.system("pip install colorama")
try:
   import socket
except:
      os.system("pip install socket")
init()
class color:
      green = '\033[92m'
      red = '\033[91m'
      End = '\033[0m'
      line = '\033[4m'
      blue = '\033[96m'
      darkblue = '\033[34m'
      org = '\033[33m'
#####################################################
#----------------------------------------------
opt = color.line + "\nHack/>" + color.End
def cls():
    os.system("clear")
def bannermenu():
    cls()
    banner.banner()
    main()
def main():
    try:
       host = ""
       packet = ""
       try:
          choose = input(opt)
       except:
             sys.exit()
       choose = choose.split()
       while True:  
             if choose == []:
               pass
             elif choose[0] == 'options':
                 print("""
----------------------------------
HOST                             |
----------------------------------
Packet                           |
----------------------------------""")    
             elif choose[0] == 'cls':
                 cls()
             elif choose[0] == 'help':
                 print("""
-----------------------------------------------------
Command             | Work                          |
-----------------------------------------------------
clear               | clear screen                  |
cls                 | clear screen                  |
reset               | reset ip,port,packet          |
set                 | set host,port,packet          |
banner              | Hack-Framework ascii art      |
exit                | exit Hack-Framework           |
quit                | quit Hack-Framework           |
info                | Hack-Framework Developer :)   |
-----------------------------------------------------""")
             elif choose[0] == 'info':
                 banner.info() 
             elif choose[0] == 'banner':
                 banner.banner()
             elif choose[0] == 'clear':
                 cls()
             elif choose[0] == 'exit':
                 banner.ext()
             elif choose[0] == 'quit':
                 banner.ext()
             elif choose[0] == "set":
                 if len(choose) < 3:
                   print("""
-------------------------
set [Otions]            |
-------------------------""")
                 else:
                      if choose[1].lower() == "host":
                        host = choose[2]
                        print("HOST ==> " + choose[2])
                      elif choose[1].lower() == "packet":
                          packet = choose[2]
                          print("packet ==> " + choose[2])
                      else:
                           print("options is Not Found!")
             elif choose[0] == "run":
                 os.system("ping -w " + packet + " " + host)
             elif choose[0] == 'exploit':
                 os.system("ping -w " + packet + " " + host)
             elif choose[0] == 'reset':
                 host = None
                 packet = None
             else:
                 print(color.green + "[" + color.red + "~" + color.green + "] " + color.End + choose[0] + " " + color.red + "Not Found!" + color.End)
             try:
                choose = input(opt)
             except:
                   sys.exit()
             choose = choose.split()
    except KeyboardInterrupt:
        print("\nCtrl + C")
        print("\nExiting...")
if __name__ == '__main__':
  try:
     bannermenu()
  except KeyboardInterrupt:
      print("\nCtrl + C")
      print("Exit Command: exit,quit")
