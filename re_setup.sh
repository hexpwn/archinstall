#!/bin/sh
sudo pacman -S ghidra gdb ltrace strace checksec gnu-netcat nmap dnsutils \
	mitmproxy binwalk arp-scan

mkdir -p ~/lab/apps
cd ~/lab/apps

git clone https://github.com/radareorg/radare2.git
cd radare2
./sys/install.sh


# Instal gdb-fef
cd ~
wget -O ~/.gdbinit-gef.py -q https://github.com/hugsy/gef/raw/master/gef.py
echo source ~/.gdbinit-gef.py >> ~/.gdbinit
