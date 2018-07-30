#!/bin/bash

#
#  Installing dotfiles in HOME directory
#

echo -e "\e[1;34mInstalling dotfiles\e[0m";
if [ -f ~/.vimrc  ]; then
    mv ~/.vimrc ~/.vimrc.old
    echo "Moving old ~/.vimrc file to ~/vimrc.old"
fi
echo "Installing new .vimrc file"

folder=$(readlink -f ./vimrc)
ln -s $folder ~/.vimrc

if [ -f ~/.ctags  ]; then
    mv ~/.ctags ~/.ctags.old
    echo "Moving old ~/.ctags file to ~/ctags.old"
fi
echo "Installing new .ctags file"

folder=$(readlink -f ./ctags)
ln -s $folder ~/.ctags

if [ -f ~/.bashrc  ]; then
    mv ~/.bashrc ~/.bashrc.old
    echo "Moving old ~/.bashrc file to ~/bashrc.old"
fi
echo "Installing new .bashrc file"
folder=$(readlink -f ./bashrc)
ln -s $folder ~/.bashrc

if [ -f ~/.bash_aliases  ]; then
    mv ~/.bash_aliases ~/.bash_aliases.old
    echo "Moving old ~/.bash_aliases file to ~/bash_aliases.old"
fi
echo "Installing new .bash_aliases file"
folder=$(readlink -f ./bash_aliases)
ln -s $folder ~/.bash_aliases

if [ -f ~/.bash_commands  ]; then
    mv ~/.bash_commands ~/.bash_commands.old
    echo "Moving old ~/.bash_commands file to ~/bash_commands.old"
fi
echo "Installing new .bash_commands file"
folder=$(readlink -f ./bash_commands)
ln -s $folder ~/.bash_commands

if [ -f ~/.gitignore_global  ]; then
    mv ~/.gitignore_global ~/.gitignore_global.old
    echo "Moving old ~/.gitignore_global file to ~/.gitignore_global"
fi

folder=$(readlink -f ./gitignore_global)
ln -s $folder ~/.gitignore_global

echo "Installing new .gitignore_global file"
echo -e "\e[1;31mRun git config --global core.excludesfile ~/.gitignore_global\e[0m";

if [ -f ~/.gitconfig  ]; then
    mv ~/.gitconfig ~/.gitconfig.old
    echo "Moving old ~/.gitconfig file to ~/gitconfig.old"
fi
echo "Installing new .gitconfig file"
folder=$(readlink -f ./gitconfig)
ln -s $folder ~/.gitconfig
echo -e "\e[1;31mUpdate name and email in your new .gitconfig file\e[0m";


echo "Done"
