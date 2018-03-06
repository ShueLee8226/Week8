#!/bin/bash

clear
echo "This is Week4 Script"
echo "First let check what in the partition table"
fdisk -l
echo "Now let create a partition that is 16MB.img"
dd if=/dev/zero of=./16MB.img bs=1M count=16
hexdump ./16MB.img | less
echo "Now let make a filesystem that is ext4"
mkfs -t ext4 ./16MB.img
echo "let check other filesystem"
ls -l /sbin/mkfs.*
sleep 3
echo "now let mount the partition that we created"
mkdir /mnt/tmp
sudo mount ./16MB.img /mnt/tmp
mount; df -h
lsblk
echo "Ok, now let put something in the partition"
cd /tmp/tmp
ls
echo "Week4 script" > ./world.txt
#unmount the partition
sudo umount /mnt/tmp
echo "Let check for world.txt in the partition that we create" 
hexdump --canonical ./16MB.img | less
