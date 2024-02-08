brew update

echo "Installing Ruby Environment"
brew install rbenv ruby-build
brew install postgresql
initdb /usr/local/var/postgres

brew install redis
brew install vim
brew install nvim
brew install ruby
brew install yarn
brew install cmake
brew install heroku/brew/heroku
brew install ack
brew install rabbitmq
brew install vips
brew install ffmpeg
brew install zlib openssl readline
brew install the_silver_searcher fzf

echo "Installing python Environment"
brew install pyenv

echo "Installing Other Environments"
brew install golang
brew install java
sudo ln -sfn /opt/homebrew/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk
brew install nodejs
brew install tree
brew install spaceship # Command Line Header
brew install doctl # Digital Ocean Control
brew install kubectl # K8s Control
brew install helm # K8s package manager
brew install graphviz
brew install flutter
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
brew install unixodbc
brew install cloud-sql-proxy google-cloud-sdk
brew install hugo

echo "Installing Fonts"
brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
brew install --cask homebrew/cask-fonts/font-material-icons

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
docker \
notion-calendar \
grammarly \
skype \
rippling \
drata-agent



echo "Setup Ruby & Python"
rbenv install 3.2.2
rbenv global 3.2.2
sudo gem update --system 3.5.6

pyenv install 3.8
