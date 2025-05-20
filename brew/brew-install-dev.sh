#!/bin/bash

# Things played with: dive

DEV_UTILITIES="postgresql@16 python3 gh awscli jq mise "
#DEV_UTILITIES="tilt redis git-delta"

echo "> Installing DEV utilities: ${DEV_UTILITIES}"
brew install ${DEV_UTILITIES}

# echo "> Installing TSE DEV utilities: ${TSE_DEV_UTILITIES}"
# brew install ${TSE_DEV_UTILITIES}


# Fonts
brew install font-monaspace


# Java?
# echo "> Install sdkman"
# curl -s "https://get.sdkman.io" | bash


# Bruno - API
# brew install bruno

# Rust
echo "> Rust: https://www.rust-lang.org/tools/install"
echo "> curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh"




# git-delta https://github.com/dandavison/delta