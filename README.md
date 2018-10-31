# Dotfiles

Repo with [git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

## Operations
- add a submodule: ``` git submodule add http://repository_url ```
- clone this repo and attached submodules: ``` git clone --recursive git@github.com:pcaldentey/dotfiles.git ```
- update submodules  ```git submodule update --init```

## Installation

Install in your environment:

Clone repo

``` git clone --recursive git@github.com:pcaldentey/dotfiles.git  ~/.vim ```

Install dot-files

``` cd ~/vim/dotfiles && ./install.sh ```


Youcompleteme installation

```cd ~/.vim/bundle/YouCompleteMe && ./install.py --all ```


## Vim plugins
- PHP-Indenting-for-VIm (https://github.com/2072/PHP-Indenting-for-VIm.git)
- YouCompleteMe (https://github.com/Valloric/YouCompleteMe.git)
- auto-pairs (https://github.com/jiangmiao/auto-pairs.git)
- nerdtree (https://github.com/scrooloose/nerdtree.git)
- php-getter-setter.vim (https://github.com/docteurklein/php-getter-setter.vim.git)
- phpcomplete.vim (git://github.com/shawncplus/phpcomplete.vim.git)
- syntastic (https://github.com/vim-syntastic/syntastic.git)

            - flake8 syntax checker for python (install flake8)
            
- taglist.vim (https://github.com/vim-scripts/taglist.vim)
- ultisnips (https://github.com/SirVer/ultisnips.git)
- vim-gitgutter (https://github.com/airblade/vim-gitgutter.git)
- vim-gutentags (https://github.com/ludovicchabant/vim-gutentags.git)
- vim-php-namespace (https://github.com/arnaud-lb/vim-php-namespace.git)
- vim-snippets (https://github.com/honza/vim-snippets)
- vim-trailing-whitespace (https://github.com/bronson/vim-trailing-whitespace)
- ctrlp (https://github.com/ctrlpvim/ctrlp.vim)
