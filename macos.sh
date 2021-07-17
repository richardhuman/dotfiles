#!/bin/bash

# #############################################################################
# Finder
# #############################################################################

# Show all files in finder
defaults write com.apple.Finder AppleShowAllFiles -bool YES; killall -HUP Finder

# Hide files in finder
# defaults write com.apple.Finder AppleShowAllFiles -bool NO; killall -HUP Finder

