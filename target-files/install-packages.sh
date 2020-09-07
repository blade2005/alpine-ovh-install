#!/bin/sh -e
echo "[-] Install basic utils"
apk add bash bash-completion nano binutils coreutils curl dialog attr \
file findutils grep less lsof readline sed util-linux python3 vim ruby
echo "[-] Install bootloader/kernel"
apk add grub grub-bios linux-lts
echo "[-] Install compiler"
apk add build-base cmake extra-cmake-modules  gcc 
echo "[-] Install extras"
apk add e2fsprogs abuild gptfdisk libvirt-daemon
echo "[-] Install System Utils"
apk add lvm2 mdadm pciutils qemu-system-x86_64 sgdisk shadow usbutils
utmps
echo "[-] Install Doc Utils"
apk add man-db man-pages mandoc  mandoc-apropos bash-doc binutils-doc \
coreutils-doc curl-doc dialog-doc grep-doc less-doc lsof-doc gcc-doc \
extra-cmake-modules-doc cmake-doc nano-doc util-linux-doc

rc-update add acpid default
rc-update add bootmisc boot
rc-update add crond default
rc-update add devfs sysinit
rc-update add dmesg sysinit
rc-update add hostname boot
rc-update add hwclock boot
rc-update add hwdrivers sysinit
rc-update add killprocs shutdown
rc-update add libvirtd default
rc-update add localmount boot
rc-update add lvm boot
rc-update add mdadm boot
rc-update add mdadm-raid boot
rc-update add mdev sysinit
rc-update add modules boot
rc-update add mount-ro shutdown
rc-update add networking boot
rc-update add savecache shutdown
rc-update add sysctl boot
rc-update add syslog boot
rc-update add urandom boot
