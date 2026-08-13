#!/bin/sh

CHROOT_DIR=/tmp/chroot
opkg -o $CHROOT_DIR install $1
