#!/bin/sh

git clone https://git.openwrt.org/openwrt/openwrt.git

cd openwrt

./scripts/feeds update -a
./scripts/feeds install -a

make menuconfig

make -j8 download V=s
make -j1 V=s