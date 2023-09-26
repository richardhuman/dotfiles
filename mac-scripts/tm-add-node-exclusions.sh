#!/bin/bash

# 
# Exclude node_modules from the current root
#

echo "[1] Adding all node_modules under `pwd` to Time Machine exclusions: "
find `pwd` -type d -maxdepth 5 -name 'node_modules'

echo "[1] Adding ...."
find `pwd` -type d -maxdepth 5 -name 'node_modules' | xargs -n 1 tmutil addexclusion

echo "[1] Done ...."


echo "[2] Adding all .venv under `pwd` to Time Machine exclusions: "
find `pwd` -type d -maxdepth 5 -name '.venv'

echo "[2] Adding ...."
find `pwd` -type d -maxdepth 5 -name '.venv' | xargs -n 1 tmutil addexclusion

echo "[2] Done ...."



