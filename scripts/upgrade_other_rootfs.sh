#!/bin/sh

. /lib/upgrade/libupgrade.sh

rootfs0_mtd=$(grep '"rootfs"' /proc/mtd | awk -F: '{print substr($1,4)}')
rootfs1_mtd=$(grep '"rootfs_1"' /proc/mtd | awk -F: '{print substr($1,4)}')

os_idx=$(nvram get flag_boot_rootfs)
rootfs_mtd_current=$(($rootfs0_mtd+${os_idx:-0}))
rootfs_mtd_target=$(($rootfs0_mtd+$rootfs1_mtd-$rootfs_mtd_current))

cd /tmp
upgrade_rootfs_ubi $rootfs_mtd_target
