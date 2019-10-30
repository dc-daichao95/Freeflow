#!/bin/bash
set -xe

# Install Memory Pool
cd libmempool && make clean && make && make install && cd ..

cd libraries/libmlx4-1.2.1mlnx1
./autogen.sh
./configure --prefix=/usr/ --libdir=/usr/lib/ --sysconfdir=/etc/
make clean && make && make install
cd ..


cd libibverbs-1.2.1mlnx1
./autogen.sh
./configure --prefix=/usr/ --libdir=/usr/lib/ --sysconfdir=/etc/
make clean && make && make install
cd ..


cd librdmacm-1.1.0mlnx
./autogen.sh
./configure --prefix=/usr/ --libdir=/usr/lib/ --sysconfdir=/etc/
make clean && make && make install
cd ..


