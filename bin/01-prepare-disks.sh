#!/bin/bash -e
source ${SCRIPT_BASE}/install.env ${SCRIPT_BASE}/utils.sh
notify "Prepare your disk. (partition, lvm, raid, mounting to ${chroot_dir}"
bash -l
