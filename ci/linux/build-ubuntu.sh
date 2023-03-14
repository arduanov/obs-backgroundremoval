#!/bin/sh
set -ex

mkdir -p build && cd build
cmake -DUSE_ROCM=1 -Donnxruntime_USE_ROCM=ON -DCMAKE_INSTALL_PREFIX=/usr ..
make -j4
