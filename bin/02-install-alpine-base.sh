#!/bin/bash -e
notify "Installing Alpine Linux with setup-alpine"

notify "Preparing pristine alpine env"

notify "Creating ${chroot_dir}"
test -d $chroot_dir || mkdir -p $chroot_dir

notify "Downloading static apk tools"
wget --no-clobber \
	${mirror}/${branch}/main/${arch}/apk-tools-static-${version}.apk
tar -xf apk-tools-static-${version}.apk

notify "Installing alpine-base"
./sbin/apk.static -X ${mirror}/${branch}/main -U --allow-untrusted \
--root ${chroot_dir} --initdb add alpine-base

notify "Setting up alpine-base"
mkdir -p ${chroot_dir}/etc/apk

cat repositories.template | envsubst > ${chroot_dir}/etc/apk/repositories

cat << RESOLV > ${chroot_dir}/etc/resolv.conf
nameserver 1.1.1.1
RESOLV

notify "Mounting pseudo filesystems"
mount -t proc none ${chroot_dir}/proc
mount -o bind /sys ${chroot_dir}/sys
mount -o bind /dev ${chroot_dir}/dev

