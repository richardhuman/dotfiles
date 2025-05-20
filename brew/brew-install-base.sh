#!/bin/bash

# Things played with: dive

# MAC_UTILITIES="smartmontools"
UTILITIES="bat jq htop glances bandwhich fzf wget nmap 1password-cli jless"

echo "> Installing BASE utilities: ${UTILITIES}"
brew install ${UTILITIES}

# echo "> Installing MAC utilities: ${MAC_UTILITIES}"
# brew install ${MAC_UTILITIES}

