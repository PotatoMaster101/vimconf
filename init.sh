#!/bin/sh
########################################################################################################################
# Initialises vim on a Unix based OS.
########################################################################################################################

command -v vim > /dev/null 2>&1 || { echo 'ERROR: Program not found: vim' 1>&2; exit 1; }
command -v git > /dev/null 2>&1 || { echo 'ERROR: Program not found: git' 1>&2; exit 1; }
command -v curl > /dev/null 2>&1 || { echo 'ERROR: Program not found: curl' 1>&2; exit 1; }
[ ! -f '.vimrc' ] && { echo 'ERROR: File not found: .vimrc' 1>&2; exit 1; }
[ -z "$HOME" ] && { echo 'ERROR: Home directory not found' 1>&2; exit 1; }

rm -rf ~/.vim/ ~/.vimrc
mkdir -p ~/.vim/autoload/
cp .vimrc ~/.vimrc
curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim --output ~/.vim/autoload/plug.vim
if [ "$?" -eq 0 ]; then
    vim -c 'PlugInstall' -c 'qa!'
    echo 'Done'
else
    echo 'ERROR: Cannot get vim-plug' 1>&2
    exit 1
fi
