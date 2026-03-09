#!/bin/bash
brew update

echo "Installing core tools..."
brew install vim git cmake tree fzf ack the_silver_searcher

echo "Installing Ruby environment..."
brew install rbenv ruby-build

echo "Installing Python environment..."
brew install pyenv

echo "Installing language runtimes..."
brew install nodejs

echo "Installing services..."
brew install postgresql
brew install heroku/brew/heroku

echo "Installing libraries..."
brew install zlib openssl readline vips ffmpeg

echo "Installing cloud tools..."
brew install doctl
brew install cloud-sql-proxy google-cloud-sdk

echo "Installing fonts..."
brew install font-material-icons font-dejavu-sans-mono-nerd-font font-hack-nerd-font

echo "Installing applications..."
brew install --cask \
  1password \
  figma \
  google-chrome \
  google-drive \
  iterm2 \
  microsoft-office \
  mimestream \
  notion \
  notion-calendar \
  slack \
  sublime-text \
  vlc \
  zoom
