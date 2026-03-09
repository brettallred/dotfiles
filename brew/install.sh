brew update

echo "Installing Ruby Environment"
brew install rbenv ruby-build
brew install postgresql
initdb /usr/local/var/postgres

brew install vim
brew install ruby
brew install yarn
brew install cmake
brew install heroku/brew/heroku
brew install ack
brew install vips
brew install ffmpeg
brew install zlib openssl readline
brew install the_silver_searcher fzf

echo "Installing python Environment"
brew install pyenv

echo "Installing Other Environments"
brew install java
sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
brew install nodejs
brew install tree
brew install spaceship # Command Line Header
brew install doctl # Digital Ocean Control
brew install cloud-sql-proxy google-cloud-sdk
brew install ffmpeg

echo "Installing Fonts"
brew tap homebrew/cask-fonts
brew install font-material-icons font-dejavu-sans-mono-nerd-font font-hack-nerd-font

echo "Installing Common Applications"
brew install --cask  \
notion \
1password \
google-drive \
figma \
vlc \
sublime-text \
iterm2 \
microsoft-office \
google-chrome \
figma \
zoom \
slack \
mimestream \
notion-calendar \

echo "Setup Ruby & Python"
rbenv install 3.3.9
rbenv global 3.3.9


npm install -g eslint prettier @prettier/plugin-ruby prettier-plugin-erb wrangler
gem install erb_lint
