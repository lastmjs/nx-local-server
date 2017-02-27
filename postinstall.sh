#!/bin/bash

wget http://nginx.org/download/nginx-1.10.1.tar.gz
tar -xzvf nginx-1.10.1.tar.gz
rm nginx-1.10.1.tar.gz
cd nginx-1.10.1
./configure --prefix=.. --error-log-path=node_modules/nx-local-server/logs/error.log
make
make install
cd ..
rm -r nginx-1.10.1
