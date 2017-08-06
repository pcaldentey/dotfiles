#!/bin/bash

#
#  In stalling dotfile in HOME directory
#

echo -e "\e[1;34mInstalling dotfiles\e[0m";
if [ -f ~/.vimrc  ]; then
    mv ~/.vimrc ~/.vimrc.old
    echo "Moving old ~/.vimrc file to ~/vimrc.old"
fi
echo "Installing new .vimrc file"

folder=$(readlink -f ./.vimrc)
ln -s $folder ~/.vimrc

if [ -f ~/.ctags  ]; then
    mv ~/.ctags ~/.ctags.old
    echo "Moving old ~/.ctags file to ~/ctags.old"
fi
echo "Installing new .ctags file"

folder=$(readlink -f ./.ctags)
ln -s $folder ~/.ctags

if [ -f ~/.gitconfig  ]; then
    mv ~/.gitconfig ~/.gitconfig.old
    echo "Moving old ~/.gitconfig file to ~/gitconfig.old"
fi
echo "Installing new .gitconfig file"
folder=$(readlink -f ./.gitconfig)
ln -s $folder ~/.gitconfig
echo -e "\e[1;31mUpdate name and email in your new .gitconfig file\e[0m";

echo "Done"
