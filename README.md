# Shopify hooks

Shopify git hooks

### Installation

```
bash <(curl -s https://raw.githubusercontent.com/arthurnn/shopifyhooks/master/install.sh)
```

### Uninstall

```
bash <(curl -s https://raw.githubusercontent.com/arthurnn/shopifyhooks/master/uninstall.sh)
```

Or

```
cd /home/vagrant/src/shopify/.git/hooks
./uninstall.sh
```


### What is in here?
pre-commit git hooks:
  - Check for whitespaces on files
  - rubocop check
