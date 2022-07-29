#!/bin/bash

set -e
set -x

export CFLAGS="-O2 ${CFLAGS}"
export CXXFLAGS="-O2 ${CXXFLAGS}"

autoreconf -vfi

./configure --prefix=${PREFIX}  \
            --build=${BUILD} \
            --enable-editline=yes \
            --sysconfdir=/etc

make -j${CPU_COUNT} ${VERBOSE_AT}
make install
