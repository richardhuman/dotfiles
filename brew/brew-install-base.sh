#!/bin/bash



UTILITIES="bat jq htop glances bandwhich fzf wget nmap"
DEV_UTILITIES="nvm python3 tilt tfenv rbenv gh postgresql@14"

echo "> Installing BASE utilities: ${UTILITIES}"

brew install ${UTILITIES}

echo "> Installing DEV utilities: ${DEV_UTILITIES}"

brew install ${DEV_UTILITIES}

# echo "> Install sdkman"
# $ curl -s "https://get.sdkman.io" | bash




