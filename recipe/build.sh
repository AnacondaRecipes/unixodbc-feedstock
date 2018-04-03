#!/bin/bash

set -e
set -x

./configure --prefix=${PREFIX}  \
            --build=${BUILD} \
            --sysconfdir=/etc
git apply $RECIPE_DIR/0001-fix-sed-syntax-on-Mac.patch
make -j${CPU_COUNT} ${VERBOSE_AT}
make install
