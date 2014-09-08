# Shopify hooks

Shopify git hooks

### Installation

```
bash <(curl -s https://raw.githubusercontent.com/arthurnn/shopifyhooks/master/install.sh?_ts=$(date +%s))
```

### Uninstall

```
bash <(curl -s https://raw.githubusercontent.com/arthurnn/shopifyhooks/master/uninstall.sh?_ts=$(date +%s))
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


### F.A.Q

What if I want to skip the hooks in one commit:
  - You should not do that, but if you need it, you can add -n to the commit command: `git commit -n`

### Editor Integration

 - Vim: install the [syntastic](https://github.com/scrooloose/syntastic) plugin
   and add the line `let g:syntastic_ruby_checkers = ['mri', 'rubocop']` to your
   `.vimrc`.
