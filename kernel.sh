#! /bin/bash

var=$(grubby --info=ALL | awk '/^title/ {print $6}' | tr -d '()' | head -1)
rm -rf /boot/initramfs-$var.img
shutdown -r +1
