#!/bin/sh -e
source utils.sh
source install.env
cat alpine-answers.template | envsubst > alpine-answers
source alpine-answers

setup-keymap $KEYMAPOPTS
setup-hostname $hostname
setup-dns $DNSOPTS
setup-timezone $TIMEZONEOPTS
setup-apkrepos $APKREPOSOPTS
setup-sshd $SSHDOPTS || echo Configured SSHD already
setup-ntp $NTPOPTS || echo Configured NTP already
cat << INTERFACES > /etc/network/interfaces
auto lo
iface lo inet loopback
auto eth0
iface eth0 inet static
  address $ip_address
  netmask 255.255.255.255
  broadcast $ip_address
  post-up route add $gateway dev eth0
  post-up route add default gw $gateway
  post-down route del default gw $gateway
  post-down route del $gateway dev eth0
INTERFACES

