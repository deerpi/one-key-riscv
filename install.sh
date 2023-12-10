#!/usr/bin/sh

sudo apt install qemu-user-static

ROOT_FS="ubuntu-base-23.10-base-riscv64.tar.gz"
ROOT_FS_DL="https://cdimage.ubuntu.com/ubuntu-base/releases/23.10/release/$ROOT_FS"
FS="riscv64"

if [ ! -f "$ROOT_FS" ]; then
    wget "$ROOT_FS_DL"
fi

if [ ! -d "$FS" ]; then
    mkdir -p "$FS"
    tar -xpvf "$ROOT_FS" -C "$FS"
fi

sudo cp /etc/resolv.conf "$FS/etc/"
sudo cp /usr/bin/qemu-riscv64-static "$FS/usr/bin"
sudo cp deersay "$FS/usr/bin"
sudo cp .bashrc "$FS/root"

bash mount.sh "$FS"

deersay "welcome to DeerPi for riscv64"


