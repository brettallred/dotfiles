echo "Installing Pathogen"
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo "Installing Ctrl-P"
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim

echo "Installing Align"
git clone https://github.com/vim-scripts/Align.git ~/.vim/bundle/Align

echo "Installing Nerdtree"
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree

echo "Installing Syntastic"
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic

echo "Installing Vim Colors Solarized"
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized

echo "Installing Vim Commentary"
git clone git://github.com/tpope/vim-commentary.git ~/.vim/bundle/vim-commentary

echo "Installing Vim Ruby"
git clone git://github.com/vim-ruby/vim-ruby.git ~/.vim/bundle/vim-ruby

echo "Installing Vim Rails"
git clone git://github.com/tpope/vim-rails.git ~/.vim/bundle/vim-rails

echo "Installing Vim Bundler"
git clone git://github.com/tpope/vim-rails.git ~/.vim/bundle/vim-bundler

echo "Installing Vim Fugitive"
git clone git://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
