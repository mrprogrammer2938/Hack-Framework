#!/usr/bin/python3
# This code write by Mr.nope
# Hack-Framework v2.2.0
# MIT License

# Copyright (c) 2021 Mr.Programmer

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
from subprocess import getoutput
import os
import time
import socket
import platform
import webbrowser
import sys
try:
    from colorama import Fore,init
    init()
except ImportError:
      os.system("pip install colorama")
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
opt = color.line + "\nHack" + color.End + "/> "
opt_2 = color.line + "\nHack/PortScan" + color.End + "/> "
opt_3 = color.line + "\nHack/Ping" + color.End + "/> "
system = platform.uname()[0]
def cls():
    if system == 'Linux':
        os.system("clear")
    else:
        print("\nPlease, Run This Programm on Linux or MacOS!\n")
        sys.exit()
def screen():
    cls()
    banner.banner()
    main()
def main():
    try:
       host = ""
       port = ""
       packet = ""
       while True:
             choose = input(opt)
             choose = choose.split()
             if choose == []:
               pass
             elif choose[0] == 'show':
                 if len(choose) < 2:
                     print("show options\n")
                 else:
                     if choose[1] == 'options' or choose[1] == 'option':
                         print("""
----------------------------------
portscan     | scanner/portscan  |
---------------------------------|
pingtest     | scanner/ping      |
----------------------------------\n""")
                     else:
                         print("show options\n")
             elif choose[0] == 'cls':
                 cls()
             elif choose[0] == 'run' or choose[0] == 'exploit':
                 print("Please, use <Options>!\n")
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
             elif choose[0] == 'use':
                 if len(choose) < 2:
                     print("use <Options>\n")
                 else:
                     if choose[1] == 'scanner/portscan':
                         portscan()
                     elif choose[1] == 'scanner/ping':
                         pingtest()
                     else:
                         print("Options Not Found!\n")
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
                      elif choose[1].lower() == 'port':
                          if choose[2] == '1-100':
                              port = [21, 22, 23, 24, 25, 53, 80]
                          elif choose[2] == '1-1000':
                              port = [21, 22, 23, 24, 25, 53, 80, 110, 443, 993]
                          elif choose[2] == '1-10000':
                              port = [21, 22, 23, 24, 25, 53, 80, 110, 443, 993, 1812, 5190]
                          else:
                              print("""
                          Port = [
                                   1-100
                                   1-1000
                                   1-10000
                                   """)
                          print("port ==> " + str(port))
                      else:
                           print("options is Not Found!")
             elif choose[0] == 'host':
                 print("""
--------------------------------
""" + host + """
--------------------------------""")
             elif choose[0] == 'developer':
                 print(Fore.BLUE + "\n[" + Fore.YELLOW + "~" + Fore.BLUE + "] " + Fore.GREEN + "Open " + Fore.RED + "Mr.nope" + Fore.GREEN + " Github..." + color.End)
                 webbrowser.open_new("https://github.com/mrprogrammer2938")
                 print("\n")
                 print("------------------\n")
             elif choose[0] == 'packet':
                 print("""
--------------------------------
""" + packet + """
--------------------------------""")
             elif choose[0] == 'reset':
                 host = None
                 packet = None
             else:
                 print(color.green + "[" + color.red + "~" + color.green + "] " + color.End + choose[0] + " " + color.red + "Not Found!" + color.End)
    except:
        sys.exit()
def pingtest():
    try:
       host = ""
       port = ""
       packet = ""
       while True:
             choose = input(opt_3)
             choose = choose.split()
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
                      elif choose[1].lower() == 'port':
                          if choose[2] == '1-100':
                              port = [21, 22, 23, 24, 25, 53, 80]
                          elif choose[2] == '1-1000':
                              port = [21, 22, 23, 24, 25, 53, 80, 110, 443, 993]
                          elif choose[2] == '1-10000':
                              port = [21, 22, 23, 24, 25, 53, 80, 110, 443, 993, 1812, 5190]
                          else:
                              print("""
                          Port = [
                                   1-100
                                   1-1000
                                   1-10000
                                   """)
                          print("port ==> " + str(port))
                      else:
                           print("options is Not Found!")
             elif choose[0] == 'host':
                 print("""
--------------------------------
""" + host + """
--------------------------------""")
             elif choose[0] == "run" or choose[0] == "exploit":
                 print("\n-----[Ping Test]-----\n")
                 time.sleep(1)
                 run_ping = getoutput(f"ping -w {packet} {host}")
                 print("\n")
             elif choose[0] == 'developer':
                 print(Fore.BLUE + "\n[" + Fore.YELLOW + "~" + Fore.BLUE + "] " + Fore.GREEN + "Open " + Fore.RED + "Mr.nope" + Fore.GREEN + " Github..." + color.End)
                 webbrowser.open_new("https://github.com/mrprogrammer2938")
                 print("\n")
                 print("------------------\n")
             elif choose[0] == 'back':
                 break;
             elif choose[0] == 'packet':
                 print("""
--------------------------------
""" + packet + """
--------------------------------""")
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
    except:
        sys.exit()
def portscan():
    try:
       host = ""
       port = ""
       packet = ""
       while True:
             choose = input(opt_2)
             choose = choose.split()
             if choose == []:
               pass
             elif choose[0] == 'options':
               print("""
----------------------------------
HOST                             |
----------------------------------
Port                             |
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
             elif choose[0] == 'back':
                 break;
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
                      elif choose[1].lower() == 'packet':
                          packet = choose[2]
                          print("packet ==> " + str(packet))
                      elif choose[1].lower() == "port":
                          if choose[2] == '1-100':
                              port = [21,22,23,24,25,53,80]
                          elif choose[2] == '1-1000':
                              port = [21,22,23,24,25,53,80,110,443,993]
                          elif choose[2] == '1-10000':
                              port = [21,22,23,24,25,53,80,110,443,993,1812,5190]
                          else:
                              print("""
Port = [
         1-100
         1-1000
         1-10000
         """)
                          print("port ==> " + str(port))
                      else:
                           print("Options is Not Found!")
             elif choose[0] == "run" or choose[0] == "exploit":
                 print("\n-----[Port Scan Start]-----")
                 time.sleep(1)
                 for i in port:
                     s = socket.socket(socket.AF_INET,socket.SOCK_STREAM)
                     start = s.connect_ex((host,i))
                     if start == 0:
                         print(f"Port: {i} Open!")
                     else:
                         print(f"Port: {i} Filter!")
                 pass
             elif choose[0] == 'host':
                 print("""
--------------------------------
""" + host + """
--------------------------------""")
             elif choose[0] == 'developer':
                 print(Fore.BLUE + "\n[" + Fore.YELLOW + "~" + Fore.BLUE + "] " + Fore.GREEN + "Open " + Fore.RED + "Mr.nope" + Fore.GREEN + " Github..." + color.End)
                 webbrowser.open_new("https://github.com/mrprogrammer2938")
                 print("\n")
                 print("------------------\n")
             elif choose[0] == 'packet':
                 print("""
--------------------------------
""" + packet + """
--------------------------------""")
             elif choose[0] == 'reset':
                 host = None
                 packet = None
             else:
                 print(color.green + "[" + color.red + "~" + color.green + "] " + color.End + choose[0] + " " + color.red + "Not Found!" + color.End)
    except:
        sys.exit()
if __name__ == '__main__':
  try:
     try:
         screen()
     except EOFError:
         print("\nCtrl + D")
         print("\nExiting...")
         sys.exit()
  except KeyboardInterrupt:
      print("\nCtrl + C")
      print("Exit Command: exit,quit")
      sys.exit()