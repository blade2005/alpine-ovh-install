#!/bin/sh -e
source ../utils.sh
source ../install.env
notify "Prepare your disk. (partition, lvm, raid, mounting to
${chroot_dir}"
sh -l
