# ewpi
EFL Windows package installer

# Requirements:
 * mingw-w64 toolchain (rename ar, dlltool, nm, ranlib, strip and windres with the host prefix when compiling on Windows)
 * make
 * cmake
 * yasm (on UNIX)
 * nasm (on UNIX)
 * wget
 * gperf
 * python
 * meson
 * ninja
 * flex
 * bison

## Windows with MSYS2

1. Install MSYS2 : https://www.msys2.org/ (steps 1 to 6)
2. run "pacman -S git gettext-devel make cmake wget gperf python bison mingw-w64-x86_64-toolchain mingw-w64-i686-toolchain mingw-w64-x86_64-ninja mingw-w64-x86_64-python3-pip"
3. run "pip3 install meson"

## Fedora 32 bits

1. dnf install cmake yasm nasm gperf python ninja-build mingw32-gcc mingw32-gcc-c++ mingw32-pkg-config python3-pip bison flex
2. run "pip3 install meson"

## Fedora 64 bits

1. dnf install cmake yasm nasm gperf python ninja-build mingw64-gcc mingw64-gcc-c++ mingw64-pkg-config python3-pip bison flex
2. run "pip3 install meson"

# Compilation

gcc -std=c99 -o ewpi ewpi.c ewpi_map.c

# Usage

To see the usage, run "./ewpi --help", which returns:
```
Usage: D:\Documents\msys2\home\vtorri\gitroot\ewpi\ewpi.exe [OPTION]

Compile and install the EFL dependencies.

Optional arguments:
  --help        show this help message and exit
  --prefix=DIR  install in  DIR (must be an absolute path)
                  [default=$HOME/ewpi_$arch] $arch=32|64 base on
                  host value
  --host=VAL    host triplet, either i686-w64-mingw32 or x86_64-w64-mingw32
                  [default=x86_64-w64-mingw32]
  --arch=VAL    value passed to -march and -mtune gcc options
                  [default=i686|x86-64], depending on host value
  --efl         install the EFL
  --jobs=VAL    maximum number of used jobs [default=maximum]
  --clean       remove the archives and the created directories
                  (not removed by default)
```
Examples :

 * ./ewpi --prefix=/opt/ewpi_32 --host=i686-w64-mingw32
 * ./ewpi --host=x86_64-w64-mingw32 --efl --jobs=4 --clean

## Packages installed

 * bullet (zlib license)
 * bzip2 (BSD 4-clause, LGPL 2.1 compatible)
 * cairo (LGPL 2.1)
 * cares (MIT)
 * check (LGPL 2.1)
 * curl (MIT)
 * dbus (Academic Free License version 2.1)
 * expat (MIT)
 * flac (LGPL 2.1)
 * fontconfig (MIT)
 * freetype (FreeType license)
 * freetype_bootstrap (FreeType license)
 * fribidi (LGPL 2.1)
 * gettext (only libintl : LGPL 2.1)
 * giflib (MIT)
 * glib2 (LGPL 2.1)
 * graphene (MIT)
 * graphite2 (LGPL 2.1)
 * gst-plugins-base (LGPL 2.1)
 * gst-plugins-good (LGPL 2.1)
 * gstreamer (LGPL 2.1)
 * harfbuzz (MIT)
 * iconv (public domain)
 * icu (MIT)
 * libaacs (LGPL 2.1)
 * libass
 * libbdplus (LGPL 2.1)
 * libbluray (LGPL 2.1)
 * libgcrypt (LGPL 2.1)
 * libgme (LGPL 2.1)
 * libgsm
 * libgpg-error (LGPL 2.1)
 * libilbc
 * libjpeg (BSD 3-clause)
 * libmysofa
 * libmodplug
 * libogg (BSD 3-clause)
 * libopenh264 (BSD 2-clause)
 * libopenmpt
 * libpng (BSD 3-clause)
 * libpsl (MIT)
 * libressl (Openssl and ISC licenses)
 * librtmp (LGPL 2.1)
 * libsnappy
 * libsndfile (LGPL 2.1)
 * libsoxr (LGPL 2.1)
 * libspeex (BSD 3-clause)
 * libssh2 (BSD 3-clause)
 * libtheora (BSD 3-clause)
 * libtiff (BSD 2-clause)
 * libvorbis (BSD 3-clause)
 * libwavpack
 * libwebp (BSD 3-clause)
 * libxml2 (MIT)
 * luajit (MIT + public domain for some parts)
 * lz4 (BSD 2-clause for the library)
 * mp3lame (LGPL 2.1)
 * mpg123 (LGPL 2.1)
 * nasm
 * nghttp2 (MIT)
 * openjpeg (BSD 2-clause)
 * opus (BSD 3-clause)
 * orc (BSD 2-clause)
 * pixman (MIT)
 * pkg-config
 * regex (MIT)
 * sdl2 (BSD 3-clause)
 * taglib (LGPL 2.1)
 * xz (lzma : public domain)
 * yasm
 * zlib (zlib license)
