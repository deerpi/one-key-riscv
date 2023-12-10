#!/bin/bash
FS="arm"
sudo umount $FS/dev/pts
sudo umount $FS/dev
sudo umount $FS/proc
sudo umount $FS/sys
sudo umount $FS/run
