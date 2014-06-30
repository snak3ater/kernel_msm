#!/bin/bash
#
#  TheArkenstone
#

clear

echo ""
echo ""
echo "Start kernel build"
echo ""
echo ""

git checkout kitkat-mr2

make clean
make mrproper
export ARCH=arm
export CROSS_COMPILE=~/tmp/arm-eabi-4.10/bin/arm-eabi-
export ENABLE_GRAPHITE=true
make mako_defconfig
time make -j4 2>&1 | tee kernel.log

echo ""
echo ""
echo "Kernel build done"
echo ""
echo ""
