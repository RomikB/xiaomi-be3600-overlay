#!/bin/sh

os_idx=$(nvram get flag_boot_rootfs)
idx_current=${os_idx:-0}
idx_target=$((1-$idx_current))

nvram set flag_boot_rootfs=$idx_target
nvram set flag_last_success=$idx_target
nvram commit
reboot
