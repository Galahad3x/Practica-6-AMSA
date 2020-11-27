#!/bin/bash
ROOTUSER_NAME=root
MOUNTPT=/tmp/ramdisk
SIZE=2024
BLOCKSIZE=1024
DEVICE=/dev/ram
username=`id -nu`
[ "$username" != "$ROOTUSER_NAME" ] && echo "No autoritzat" && exit 1
[ ! -d "$MOUNTPT" ] &&mkdir $MOUNTPT
dd if=/dev/zero of=$DEVICE count=$SIZE bs=$BLOCKSIZE
/sbin/mkfs.ext4 $DEVICE
mount $DEVICE $MOUNTPT
chmod 777 $MOUNTPT
echo $MOUNTPT "disponible"
exit 0
