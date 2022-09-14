# dotfiles

Configuring a new computer

1. Install xcode, better snap tool, filezilla pro from the App Store
2. Install Homebrew `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
3. `brew install git`
4. Copy .ssh/id_rsa.pub and id_rsa to .ssh/
5. `chmod 400 .ssh/id_rsa`
6. Clone this repo `git clone git@github.com:brettallred/dotfiles.git .dotfiles`
7. `./install.sh`
8. `./setup-aliases.sh
