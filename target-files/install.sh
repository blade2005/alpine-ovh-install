#!/bin/sh -e
source utils.sh
source install.env
./install-packages.sh
./core-install.sh
adduser stoney -D
addgroup stoney wheel
./add-ssh-key.sh root
./add-ssh-key.sh stoney
./bootloader.sh

echo "$hostname.$domain" > /etc/hostname

echo unicode="YES" >> /etc/rc.conf
