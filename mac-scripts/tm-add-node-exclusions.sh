#!/bin/bash

# 
# Exclude node_modules from the current root
#

echo "Adding all node_modules under `pwd` to Time Machine exclusions: "

find `pwd` -type d -maxdepth 5 -name 'node_modules'

echo "Adding ...."

find `pwd` -type d -maxdepth 5 -name 'node_modules' | xargs -n 1 tmutil addexclusion

echo "Done ...."

