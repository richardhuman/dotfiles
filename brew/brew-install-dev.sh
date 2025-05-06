#!/bin/bash

# Things played with: dive

DEV_UTILITIES="python3 tilt gh postgresql@16 awscli jq redis mise git-delta"

echo "> Installing DEV utilities: ${DEV_UTILITIES}"
brew install ${DEV_UTILITIES}

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