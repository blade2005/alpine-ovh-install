#!/bin/bash -e
source install.env utils.sh
notify "Prepare your disk. (partition, lvm, raid, mounting to
${chroot_dir}"
sh -l
