#!/bin/bash
FS="arm"
sudo mount -v --bind /dev $FS/dev
sudo mount -vt devpts devpts $FS/dev/pts -o gid=5,mode=620
sudo mount -vt proc proc $FS/proc
sudo mount -vt sysfs sysfs $FS/sys
sudo mount -vt tmpfs tmpfs $FS/run
sudo chroot $FS
