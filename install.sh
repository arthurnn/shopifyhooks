#!/bin/sh

hook_version=v0.0.1
if [ -d "/home/vagrant/src/shopify/.git/hooks" ]; then
    cd /home/vagrant/src/shopify/.git/hooks
    wget -qO- "https://github.com/arthurnn/shopifyhooks/archive/$hook_version.tar.gz" | tar xz --strip-components=1
    rm -f README.md install.sh
    echo "Done."
    exit 0
else
    echo "You are not inside vagrant, please vagrant-up!"
    exit 1
fi


