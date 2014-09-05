
if [ -d "/home/vagrant/src/shopify/.git/hooks" ]; then
    cd /home/vagrant/src/shopify/.git/hooks
    git clone https://github.com/arthurnn/shopifyhooks.git .
    rm -f README.md install.sh
else
    echo "You are not inside vagrant, please vagrant-up!"
    exit 1
fi


