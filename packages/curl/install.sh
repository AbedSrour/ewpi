#! /bin/sh

. ../../common.sh

./configure --prefix=$3 --host=$4 --disable-static --with-zlib --with-openssl --with-libssh2 --with-winidn=yes --without-libidn2 > ../config.log 2>&1

make -j $jobopt $verbmake install > ../make.log 2>&1
