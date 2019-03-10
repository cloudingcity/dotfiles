# Dotfiles

> See [https://github.com/holman/dotfiles](https://github.com/holman/dotfiles)


## Install

```sh
git clone https://github.com/cloudingcity/dotfiles.git ~/.dotfiles
```

## Usage

Customize local gitconfig:
```sh
cd git
cp gitconfig.local.symlink.example gitconfig.local.symlink
vim gitconfig.local.symlink
```

Bootstrap dotifles, git config, poweline config:
```sh
script/bootstrap
```

Install all of `install.sh`:
```sh
script/install
```
