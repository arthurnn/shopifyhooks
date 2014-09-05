#!/bin/sh

hook_version=0.0.2
if [ -d "/home/vagrant/src/shopify/.git/hooks" ]; then
    cd /home/vagrant/src/shopify/.git/hooks
    wget -qO- "https://github.com/arthurnn/shopifyhooks/archive/v$hook_version.tar.gz" | tar xzv --strip-components=1 --index-file=shopifyhooks.log
    rm -f README.md install.sh

    sed 's/shopifyhooks-$hook_version\///g' shopifyhooks.log > shopifyhooks.log.tmp && mv shopifyhooks.log.tmp shopifyhooks.log

    echo "Done."
    exit 0
else
    echo "You are not inside vagrant, please vagrant-up!"
    exit 1
fi
