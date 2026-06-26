# Dotfiles

This is my personal dotfiles repository, customized and extended based on the [Holman's dotfiles](https://github.com/holman/dotfiles) framework.

It is designed to quickly bootstrap a clean development environment, manage macOS software packages via Homebrew, and configure tools like Zsh, Git, Vim, Ghostty, and more.

---

## 🚀 Features & Configurations

The project is structured modularly, featuring configurations for:
- **Shell (Zsh)**: Managed via [Antidote](https://github.com/mattmc3/antidote) plugin manager, using the p10k theme, with automatic loading of machine-specific configurations from `~/.localrc`.
- **Git**: Complete Git setups and a global `.gitignore`, with support for independent local user profiles.
- **Editors & Terminal**:
  - **Vim**: Custom personal `.vimrc` configurations.
  - **Ghostty**: Automated symlinking of Ghostty terminal settings.
  - **IdeaVim**: Shared `.ideavimrc` configuration.
- **Environment Management**:
  - **Homebrew**: Declarative package management via `Brewfile` to install macOS apps, command-line utilities, and developer fonts.
  - **Tool Integrations**: Preconfigured environments for k8s, k9s, docker, bun, go, etc.

---

## 🛠️ Installation

### 1. Clone the Repository
Clone this repository directly to your home directory under `~/.dotfiles`:
```sh
git clone https://github.com/cloudingcity/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

### 2. Run Bootstrap
Run the bootstrap script to initialize configurations. This will:
1. Prompt you for your Git author name and email to automatically generate your local `git/gitconfig.local.symlink` (which links to `~/.gitconfig.local`).
2. Symlink all `*.symlink` files in this repository to your home directory.
3. Set up symlinks for your Ghostty configuration.

```sh
./scripts/bootstrap
```

### 3. Install System Dependencies
Install Homebrew packages, applications, and developer tools specified in `homebrew/Brewfile`:
```sh
./scripts/install
```

---

## ⚙️ Customization

To keep sensitive credentials, API keys, or machine-specific aliases out of public Git repositories, this setup supports local overlays:

### 1. Local Git Config (`~/.gitconfig.local`)
When you run `./scripts/bootstrap`, it automatically generates `git/gitconfig.local.symlink` (linked to `~/.gitconfig.local`) with the following format:
```ini
[user]
        name = Your Name
        email = your.email@example.com
[credential]
        helper = osxkeychain
```
You can edit this file at any time to update your local Git identity or configuration.

### 2. Local Shell Config (`~/.localrc`)
Store sensitive environment variables, API tokens, or machine-specific aliases in `~/.localrc` in your home directory. It is automatically sourced by Zsh on startup and is ignored by Git.

**Example `~/.localrc` content:**
```sh
# Sensitive API tokens
export GITHUB_TOKEN="your_personal_access_token"
export DB_PASSWORD="secret_password"

# Machine-specific aliases
alias local-only-db="docker exec -it my_db psql"
```

---

## 📂 Directory Structure

```text
.
├── scripts/          # System bootstrap and installer scripts (bootstrap, install)
├── git/              # Git configurations and global gitignore
├── zsh/              # Zsh configurations and startup scripts
├── antidote/         # Zsh plugin manager configs
├── homebrew/         # Homebrew package list (Brewfile)
├── vim/              # Vim configurations
├── ghostty/          # Ghostty terminal configurations
├── ideavim/          # JetBrains IdeaVim configurations
├── system/           # General shell environment configurations and variables
└── ...               # Additional configuration modules (k8s, k9s, docker, bun, go)
```


