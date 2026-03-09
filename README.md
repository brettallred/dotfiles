# dotfiles

Configuring a new Mac.

## Setup

1. Install Xcode command line tools: `xcode-select --install`
2. Install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
3. `brew install git`
4. Generate SSH key: `ssh-keygen -t ed25519` and add to GitHub
5. Clone this repo: `git clone git@github.com:brettallred/dotfiles.git ~/.dotfiles`
6. Run setup: `cd ~/.dotfiles && ./setup.sh`

## Structure

- `brew/install.sh` - Homebrew packages and cask apps
- `git/` - gitconfig and gitignore (symlinked to `~/.gitconfig`, `~/.gitignore`)
- `vim/` - vimrc (symlinked to `~/.vimrc`)
- `zsh/` - zshrc (symlinked to `~/.zshrc`)
- `setup.sh` - Single entry point that runs everything
