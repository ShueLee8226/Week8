#!/bin/bash

clear
echo "This is script 7"
echo "let check our runlevel"
runlevel
echo "Now let check it again with the date and time we access to the runlevel"
who -r
echo "Let find our init system"
ls /usr/lib/systemd /etc/systemd/ | head
ls ls /etc/init | head
sleep 1

echo "Let check some list unit"
sudo systemctl list-units | head
sleep 1
echo "Let see our systemd configuration location"
sudo systemctl -p UnitPath show
echo "let check the dependencies units list"
sudo systemctl list-dependencies | head
