#!/bin/sh

DIR=`dirname $0`

cp ${DIR}/.vimrc ~/

mkdir -p ~/.vim
mkdir -p ~/.vim/backups
mkdir -p ~/.vim/swaps
mkdir -p ~/.vim/undo

rsync -vax --recursive ${DIR}/vim/ ~/.vim

# Install Pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Install plugins
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline


cd ~/.vim/bundle
git clone https://github.com/scrooloose/nerdtree.git
#vim, run :Helptags, and check out :help NERD_tree.txt.


cd ~/.vim
git clone git://git.wincent.com/command-t.git bundle/command-t

# vim> :call pathogen#helptags()
rake make
