#!/bin/bash
sh core/install.sh
sh brew/install.sh
sh vim/install.sh
sh script/bootstrap

ln -s git/gitconfig.symlink ~/.gitconfig
ln -s git/gitignore.symlink ~/.gitignore
