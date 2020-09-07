#!/bin/sh -e
source alpine-answers
apk add syslinux
dd bs=440 count=1 if=/usr/share/syslinux/mbr.bin of=$DEFAULT_DISK
extlinux -i /boot
root=UUID=$(blkid ${DEFAULT_DISK}1 | cut -d\" -f2)
sed -i -e "s:^root=.*:root=$root:" /etc/update-extlinux.conf
sed -i -e "s:^modules=.*:modules=sd-mod,usb-storage,ext4:" /etc/update-extlinux.conf
update-extlinux
