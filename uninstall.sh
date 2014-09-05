#!/bin/sh

if [ -d "/home/vagrant/src/shopify/.git/hooks" ]; then
    rm -f $(cat shopifyhooks.log) shopifyhooks.log
    echo "Done."
    exit 0
else
    echo "You are not inside vagrant, please vagrant-up!"
    exit 1
fi
