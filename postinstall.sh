#!/bin/bash

wget ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.40.tar.gz
tar -zxf pcre-8.40.tar.gz
rm pcre-8.40.tar.gz
cd pcre-8.40
./configure --prefix=.
make
make install

cd ..

wget http://zlib.net/zlib-1.2.11.tar.gz
tar -zxf zlib-1.2.11.tar.gz
rm zlib-1.2.11.tar.gz
cd zlib-1.2.11
./configure --prefix=.
make
make install

cd ..

wget http://nginx.org/download/nginx-1.10.1.tar.gz
tar -xzvf nginx-1.10.1.tar.gz
rm nginx-1.10.1.tar.gz
cd nginx-1.10.1
./configure --prefix=.. --with-pcre=../pcre-8.40 --with-zlib=../zlib-1.2.11
make
make install
cd ..
rm -r nginx-1.10.1
