#!/bin/bash

clear
echo "This is Week3 script"
echo "Week3 is about Device"
echo "First let change into dev bin some device in there"
cd /dev
ls -l | head
echo "Here is a example of a device that ignores the input and throw"; echo "away the data"
echo hello world > /dev/null
echo "let see  the kernel messages and the block device file system"
dmesg | grep sd
sleep 2
lsblk --fs
echo "now let create a empty file"
sudo dd if=/dev/zero of=./New_File bs=1M count=1
hexdump New_File
