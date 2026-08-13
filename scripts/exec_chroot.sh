#!/bin/sh

CHROOT_DIR=/tmp/chroot

for dir in dev proc sys; do mount --bind /$dir $CHROOT_DIR/$dir; done
chroot $CHROOT_DIR /bin/sh
for dir in sys proc dev; do umount $CHROOT_DIR/$dir; done
