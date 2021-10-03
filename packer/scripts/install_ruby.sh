#!/bin/sh
echo "--------start-----------------------"
# sudo apt update
ps aux | grep -i apt
# sudo rm /var/lib/apt/lists/lock
# sudo rm /var/cache/apt/archives/lock
# sudo rm /var/lib/dpkg/lock
# sudo rm /var/lib/dpkg/lock-frontend
echo "-------end 1----------------------------"
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock
sudo rm /var/lib/dpkg/lock-frontend
# sleep 10s
ps aux | grep -i apt
# sudo dpkg --configure -a
echo "-------end 2----------------------------"
sudo apt install -y ruby-full ruby-bundler build-essential
echo "-------end 3----------------------------"
