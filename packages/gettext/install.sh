#! /bin/sh

. ../../common.sh

cd gettext-runtime

./configure --prefix=$3 --host=$4 --disable-static --disable-c++ --disable-java --disable-native-java --enable-threads=windows --disable-rpath --disable-libasprintf --disable-curses --disable-acl --with-libiconv-prefix=$3 > ../../config.log 2>&1

make -j $jobopt $verbmake install > ../../make.log 2>&1
