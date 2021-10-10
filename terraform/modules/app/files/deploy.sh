#!/bin/bash
set -e
APP_DIR=${1:-$HOME}

echo "--------start-----------------------"
sudo rm /var/lib/apt/lists/lock
sudo rm /var/cache/apt/archives/lock
sudo rm /var/lib/dpkg/lock
sudo rm /var/lib/dpkg/lock-frontend
# sleep 10s
ps aux | grep -i apt
# sudo dpkg --configure -a
echo "-------end----------------------------"
sudo apt-get install -y git
git clone -b monolith https://github.com/express42/reddit.git $APP_DIR/reddit
cd $APP_DIR/reddit
bundle install
sudo mv /tmp/puma.service /etc/systemd/system/puma.service
sudo systemctl start puma
sudo systemctl enable puma
# echo "-------end 2----------------------------"
# sudo rm /var/lib/apt/lists/lock
# sudo rm /var/cache/apt/archives/lock
# sudo rm /var/lib/dpkg/lock
# sudo rm /var/lib/dpkg/lock-frontend
# ps aux | grep -i apt
# sudo apt install -y mc
