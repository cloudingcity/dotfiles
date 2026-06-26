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

Customize local shell configurations (`~/.localrc`):

Stash your sensitive environment variables, API keys, or machine-specific configurations in `~/.localrc`. This keeps them out of your public repository while still loading them automatically into your shell session.

```sh
# Example: Add custom or secret environment variables to ~/.localrc
export GITHUB_TOKEN="your_personal_access_token"
export DB_PASSWORD="secret_password"
```

Bootstrap dotifles, git config, poweline config:
```sh
./scripts/bootstrap
```

Install all of `install.sh`:
```sh
./scripts/install
```
