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

~/.vim

Youcompleteme installation
```cd ~/.vim/bundle/YouCompleteMe ```
``` ./install.py --all ```


## Vim plugins
PHP-Indenting-for-VIm (https://github.com/2072/PHP-Indenting-for-VIm.git) registered for path 'bundle/PHP-Indenting-for-VIm'
YouCompleteMe (https://github.com/Valloric/YouCompleteMe.git) registered for path 'bundle/YouCompleteMe'
auto-pairs (https://github.com/jiangmiao/auto-pairs.git) registered for path 'bundle/auto-pairs'
nerdtree (https://github.com/scrooloose/nerdtree.git) registered for path 'bundle/nerdtree'
php-getter-setter.vim (https://github.com/docteurklein/php-getter-setter.vim.git) registered for path 'bundle/php-getter-setter.vim'
phpcomplete.vim (git://github.com/shawncplus/phpcomplete.vim.git) registered for path 'bundle/phpcomplete.vim'
syntastic (https://github.com/vim-syntastic/syntastic.git) registered for path 'bundle/syntastic'
taglist.vim (https://github.com/vim-scripts/taglist.vim) registered for path 'bundle/taglist.vim'
ultisnips (https://github.com/SirVer/ultisnips.git) registered for path 'bundle/ultisnips'
vim-gitgutter (https://github.com/airblade/vim-gitgutter.git) registered for path 'bundle/vim-gitgutter'
vim-gutentags (https://github.com/ludovicchabant/vim-gutentags.git) registered for path 'bundle/vim-gutentags'
vim-php-namespace (https://github.com/arnaud-lb/vim-php-namespace.git) registered for path 'bundle/vim-php-namespace'
vim-snippets (https://github.com/honza/vim-snippets) registered for path 'bundle/vim-snippets'
vim-trailing-whitespace (https://github.com/bronson/vim-trailing-whitespace) registered for path 'bundle/vim-trailing-whitespace'

