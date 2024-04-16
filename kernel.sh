#! /bin/bash

var=$(grubby --info=ALL | grep title | awk '{print $5}' | tr -d '()' | head -1)
rm -rf /boot/initramfs-$var.img
reboot
