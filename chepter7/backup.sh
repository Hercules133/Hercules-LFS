#!/bin/bash

echo "set LFS variable"
export LFS=/mnt/lfs

mountpoint -q $LFS/dev/shm && umount $LFS/dev/shm
umount $LFS/dev/pts
umount $LFS/{sys,proc,run,dev}

cd $LFS
tar -cJpf $HOME/lfs-temp-tools-13.0-systemd.tar.xz .