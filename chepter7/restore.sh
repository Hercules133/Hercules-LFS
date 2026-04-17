#!/bin/bash

echo "set LFS variable"
export LFS=/mnt/lfs

cd $LFS
rm -rf ./*
tar -xpf $HOME/lfs-temp-tools-13.0-systemd.tar.xz