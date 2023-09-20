#!/bin/bash



MAC_UTILITIES="smartmontools"
UTILITIES="vim bat jq htop glances bandwhich fzf wget nmap"
DEV_UTILITIES="nvm python3 tilt tfenv rbenv gh postgresql@14"

echo "> Installing BASE utilities: ${UTILITIES}"

brew install ${UTILITIES}

echo "> Installing DEV utilities: ${DEV_UTILITIES}"

brew install ${DEV_UTILITIES}

echo "> Installing MAC utilities: ${MAC_UTILITIES}"

brew install ${MAC_UTILITIES}

# Java?
# echo "> Install sdkman"
# $ curl -s "https://get.sdkman.io" | bash
<<<<<<< HEAD
=======




>>>>>>> 030503abfd7b630de1ef7b5af2ffdbae840855ae
# brew install --cask browserosaurus
