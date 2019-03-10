#!/bin/bash

#
#  Installing dotfiles in HOME directory
#

echo -e "\e[1;34mInstalling dotfiles\e[0m";
if [ -f ~/.vimrc  ]; then
    cp ~/.vimrc ~/.vimrc.old
    rm ~/.vimrc
    echo "Moving old ~/.vimrc file to ~/vimrc.old"
fi
echo "Installing new .vimrc file"

folder=$(readlink -f ./vimrc)
ln -s $folder ~/.vimrc

if [ -f ~/.ctags  ]; then
    cp ~/.ctags ~/.ctags.old
    rm ~/.ctags
    echo "Moving old ~/.ctags file to ~/ctags.old"
fi
echo "Installing new .ctags file"

folder=$(readlink -f ./ctags)
ln -s $folder ~/.ctags

if [ -f ~/.bashrc  ]; then
    cp ~/.bashrc ~/.bashrc.old
    rm ~/.bashrc
    echo "Moving old ~/.bashrc file to ~/bashrc.old"
fi
echo "Installing new .bashrc file"
folder=$(readlink -f ./bashrc)
ln -s $folder ~/.bashrc

if [ -f ~/.bash_aliases  ]; then
    cp ~/.bash_aliases ~/.bash_aliases.old
    rm ~/.bash_aliases
    echo "Moving old ~/.bash_aliases file to ~/bash_aliases.old"
fi
echo "Installing new .bash_aliases file"
folder=$(readlink -f ./bash_aliases)
ln -s $folder ~/.bash_aliases

if [ -f ~/.bash_commands  ]; then
    cp ~/.bash_commands ~/.bash_commands.old
    rm ~/.bash_commands
    echo "Moving old ~/.bash_commands file to ~/bash_commands.old"
fi
echo "Installing new .bash_commands file"
folder=$(readlink -f ./bash_commands)
ln -s $folder ~/.bash_commands

if [ -f ~/.flake8  ]; then
    cp ~/.flake8 ~/.flake8.old
    rm ~/.flake8
    echo "Moving old ~/.flake8 file to ~/flake8.old"
fi
echo "Installing new .flake8 file"
folder=$(readlink -f ./flake8)
ln -s $folder ~/.flake8


if [ -f ~/.gitignore_global  ]; then
    cp ~/.gitignore_global ~/.gitignore_global.old
    rm ~/.gitignore_global
    echo "Moving old ~/.gitignore_global file to ~/.gitignore_global"
fi

folder=$(readlink -f ./gitignore_global)
ln -s $folder ~/.gitignore_global

echo "Installing new .gitignore_global file"
echo -e "\e[1;31mRun git config --global core.excludesfile ~/.gitignore_global\e[0m";

if [ -f ~/.gitconfig  ]; then
    cp ~/.gitconfig ~/.gitconfig.old
    rm ~/.gitconfig 
    echo "Moving old ~/.gitconfig file to ~/gitconfig.old"
fi
echo "Installing new .gitconfig file"
folder=$(readlink -f ./gitconfig)
ln -s $folder ~/.gitconfig
echo -e "\e[1;31mUpdate name and email in your new .gitconfig file\e[0m";


echo "Done"
