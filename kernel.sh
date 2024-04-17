#! /bin/bash

var=$(grubby --info=ALL | awk '/^title/ {print $5}' | tr -d '()' | head -1)
rm -rf /boot/initramfs-$var.img
reboot
