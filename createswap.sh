#!/bin/bash
ROOT_UID=0
FILE=/var/$1
BLOCKSIZE=1024;
MINBLOCKS=40;
[ "$UID" -ne "$ROOT_UID" ] && echo "no autoritzat" && exit 1
sudo dd if=/dev/zero of=$FILE bs=$BLOCKSIZE count=40
sudo chmod 600 $FILE
sudo /sbin/mkswap -f $FILE 40
sudo swapon $FILE
echo "Fitxer $FILE creat i activat"
exit 0

