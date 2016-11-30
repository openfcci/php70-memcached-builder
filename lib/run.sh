#!/bin/bash
git clone https://github.com/php-memcached-dev/php-memcached.git
cd php-memcached
git checkout php7
phpize
./configure
make
make install
cp /usr/lib/php/*/memcached.so /output/memcached.so
