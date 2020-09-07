#!/bin/bash -e
source ${SCRIPT_BASE}/install.env ${SCRIPT_BASE}/utils.sh
echo "[-] Prepare your disk. (partition, lvm, raid, mounting to ${chroot_dir}"
bash -l
