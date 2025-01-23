#!/bin/sh

DIR=`dirname $0`

cp ${DIR}/.vimrc ~/

mkdir -p ~/.vim
mkdir -p ~/.vim/backups
mkdir -p ~/.vim/swaps
mkdir -p ~/.vim/undo

# rsync -vax --recursive ${DIR}/vim/ ~/.vim

# New package management - 23-Jan-2025
mkdir -p ~/.vim/pack/dist/start

# Install plugins
git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
# vim, run :helptags ~/.vim/pack/dist/start/vim-airline/doc


git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q



#cd ~/.vim
#git clone git://git.wincent.com/command-t.git bundle/command-t

