#!/bin/sh
cp /opt/magento2/composer.json .
cp /opt/magento2/Makefile .
cp /opt/magento2/vhost.conf .
mkdir -p var/{log,session,tmp}
make install-composer-deps