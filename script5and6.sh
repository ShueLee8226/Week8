#!/bin/bash

clear
echo "This is Week5 and 6 script"
echo "Let look at the kernel log"
sleep 2
less /var/log/kern.log | head
less /var/log/messages | tail
sleep 3

clear
echo "Now let check the kernel Boot parameters"
cat /proc/cmdline
echo "let take a look at the grub"
cd /boot
ls
sleep 2
cd grub/
ls -l
sleep 2
less grub.cfg | head
less grub.cfg | tail
sleep 4

echo "Now let look at the manual page for grub install"
man grub-mkconfig | head
sleep 1
echo "Now let install grub into a device"
lsblk
read device_choice
grub-install /dev/${device_choice}


