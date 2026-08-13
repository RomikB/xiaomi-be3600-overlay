#!/bin/sh

CHROOT_DIR=/tmp/chroot

for dir in bin dev etc lib proc sys; do mkdir -p $CHROOT_DIR/$dir; done
for usrdir in bin lib; do mkdir -p $CHROOT_DIR/usr/$usrdir; done
mkdir -p $CHROOT_DIR/var/lock
