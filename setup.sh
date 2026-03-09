#!/bin/bash
set -e

DOTFILES_ROOT="$(cd "$(dirname "$0")" && pwd -P)"

echo "=== Dotfiles Setup ==="

# 1. Install Homebrew if not present
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# 2. Install brew packages and casks
echo "Installing brew packages..."
sh "$DOTFILES_ROOT/brew/install.sh"

# 3. Install Oh My Zsh if not present
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "Installing Oh My Zsh..."
  RUNZSH=no sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# 4. Install Powerline Fonts
echo "Installing Powerline Fonts..."
git clone https://github.com/powerline/fonts.git --depth=1 /tmp/powerline-fonts
/tmp/powerline-fonts/install.sh
rm -rf /tmp/powerline-fonts

# 5. Symlink dotfiles (non-interactive, force overwrite)
echo "Symlinking dotfiles..."
for src in $(find -H "$DOTFILES_ROOT" -maxdepth 2 -name '*.symlink' -not -path '*.git*'); do
  dst="$HOME/.$(basename "${src%.*}")"
  if [ -f "$dst" ] || [ -L "$dst" ]; then
    rm -f "$dst"
  fi
  ln -s "$src" "$dst"
  echo "  linked $src -> $dst"
done

# 6. Install Vundle and vim plugins
if [ ! -d "$HOME/.vim/bundle/Vundle.vim" ]; then
  echo "Installing Vundle..."
  git clone https://github.com/VundleVim/Vundle.vim.git "$HOME/.vim/bundle/Vundle.vim"
fi
echo "Installing vim plugins..."
vim +PluginInstall +qall

# 7. Setup Ruby
echo "Setting up Ruby..."
rbenv install -s 3.3.9
rbenv global 3.3.9
eval "$(rbenv init -)"
gem install erb_lint

# 8. Setup Node packages
echo "Installing global npm packages..."
npm install -g eslint prettier @prettier/plugin-ruby prettier-plugin-erb wrangler

echo ""
echo "=== Setup complete! ==="
echo "Run 'source ~/.zshrc' or open a new terminal."
