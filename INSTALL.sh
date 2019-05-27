#!/bin/bash

src_url=`wget -q -O - "$@" http://www.linuxfromscratch.org/blfs/view/svn/general/unrar.html | grep -i "unrarsrc" | grep -Eo '(http|https)://[a-zA-Z0-9./?-]+' | uniq`

echo $src_url

[ -z $src_url ] && { echo "No url found for unrar source"; exit 1; }

tmpDir=`mktemp -d /tmp/unrar.XXXXXX`
cd $tmpDir && \
wget $src_url && \
tar -xvf unrar* && \
cd unrar && \
# Get the number of processors for compiling faster
np=`nproc` &&\
make -j$np -f makefile && \
sudo install -v -m755 unrar /usr/bin && \
rm -rf $tmpDir

exit 0
