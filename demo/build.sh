#!/bin/bash

cd demo

source /opt/davy/1.0/environment-setup-cortexa9hf-vfp-neon-davy-linux-gnueabi

qmake && make -j`nproc` && make clean
qmake && make -j`nproc` && make distclean
qmake && make -j`nproc`
