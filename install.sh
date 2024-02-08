#!/bin/bash
sh brew/install.sh
sh core/install.sh

# Install Powerline Fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
