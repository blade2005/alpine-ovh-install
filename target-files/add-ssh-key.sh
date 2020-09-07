#!/bin/sh -e
user=$1
mkdir ~${user}/.ssh
cat << 'EOS' > ~${user}/.ssh/authorized_keys
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJcniUGavP7kbpertU/MKAcJL0O+PueCxIiCWomxZuUV stoney@platypus
EOS

