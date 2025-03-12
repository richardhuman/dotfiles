#!/bin/bash

# Things played with: dive

MAC_UTILITIES="smartmontools"
UTILITIES="bat jq htop glances bandwhich fzf wget nmap 1password-cli jless"
DEV_UTILITIES="python3 tilt gh postgresql@16 awscli jq redis mise git-delta"

# DEV_UTILITIES="nvm python3 tilt tfenv rbenv gh postgresql@16 awscli jq redis pyenv"
# TSE_DEV_UTILITIES="wkhtmltopdf"

echo "> Installing BASE utilities: ${UTILITIES}"
brew install ${UTILITIES}

echo "> Installing DEV utilities: ${DEV_UTILITIES}"
brew install ${DEV_UTILITIES}

echo "> Installing MAC utilities: ${MAC_UTILITIES}"
brew install ${MAC_UTILITIES}

# echo "> Installing TSE DEV utilities: ${TSE_DEV_UTILITIES}"
# brew install ${TSE_DEV_UTILITIES}


# Fonts
brew tap homebrew/cask-fonts
brew install font-monaspace


# Java?
echo "> Install sdkman"
curl -s "https://get.sdkman.io" | bash
# brew install --cask browserosaurus

# Bruno - API
# brew install bruno

# Rust
echo "> Rust: https://www.rust-lang.org/tools/install"
echo  "> curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"




# git-delta https://github.com/dandavison/delta