#!/bin/sh
                     
cd "$(dirname "$0")" 

cp ./bash_config/exports ~/.exports
cp ./bash_config/aliases ~/.aliases 
cp ./bash_config/wrappers ~/.wrappers
cp ./bash_config/bash_prompt ~/.bash_prompt

source ~/.bash_profile


