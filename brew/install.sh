brew update

echo "Installing Ruby Environment"
brew install rbenv ruby-build
brew install postgresql
brew install redis
brew install vim
brew install nvim
brew install ruby
brew install yarn
brew install cmake
brew install heroku/brew/heroku
brew install ag
brew install rabbitmq


echo "Installing Other Environments"
brew install golang
brew install java
brew install nodejs
brew install pyenv
brew install tree
brew install spaceship # Command Line Header
brew install doctl # Digital Ocean Control
brew install kubectl # K8s Control
brew install helm # K8s package manager
brew install graphviz

echo "Installing Common Applications"
brew install youtube-dl
brew install --cask  \
notion \
1password \
evernote \
google-drive \
visual-studio-code \
figma \
vlc \
sublime-text \
iterm2 \
p4v \
microsoft-office \
pgadmin4 \
google-chrome \
figma \
handbrake \
zoom \
slack \
microsoft-teams \
mimestream \
docker
