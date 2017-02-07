"
"  Pathogen
"
execute pathogen#infect()
execute pathogen#helptags()
filetype plugin on
filetype indent on

"
"  General behavior
"
set nocompatible                " Use vim defaults
let mapleader=","               " Use the comma as leader
set nobackup                    " Do not backup files on overwrite
set history=250 		" Sets how many lines of history VIM has to remember

"
"  Navigation & Viewport
"
set scrolloff=5       " at least 5 lines of context when moving cursor
set sidescrolloff=5   " and 5 columns of context
set hidden                          " Allow switch beetween modified buffers withouti saving
set backspace=indent,eol,start      " Improve backspacing

"
"  Syntax and files
"
syntax on
au BufRead,BufNewFile *.pgsql set filetype=sql
au BufRead,BufNewFile *.swig set filetype=sql
au BufRead,BufNewFile *.twig set filetype=html
au BufRead,BufNewFile *.pp setf puppet

"
"  Tabs & Indentation
"
" Indentation settings according to personal preference.
set autoindent
set smartindent
"set formatoptions+=r
set shiftwidth=4 	" The width of a TAB is set to 4. Still it is a \t. It is just that
set softtabstop=4 	" See 4 spaces per tab
set tabstop=4		" A tab is 4 spaces
set expandtab 		"tab key (in insert mode) insert spaces instead of tab characters

autocmd FileType make setlocal noexpandtab       "To turn off expandtab for editing makefiles, put the following in your vimrc:
set lbr " Linebreak on 500 characters
set tw=500
set ff=unix

"Automatically removing all trailing whitespace
"One way to make sure to remove all trailing whitespace in a file is to set an autocmd in your .vimrc file. Every time the user issues a :w command, Vim will automatically remove all trailing whitespace before saving. Annoying
"autocmd BufWritePre * :%s/\s\+$//e

"
"  Status line
"
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] "format
set laststatus=2 "status line position

"
"  Mapping
"
"Clean the previous search (to clean highlight)
map <silent> <C-N> :silent noh<CR>

"
"  Plugins specific configuration or vim configuration to improve plugin " 
"
" phpcomplete just for php
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
set completeopt=longest,menuone

" vim-taglist
nnoremap <silent> <F8> :TlistToggle<CR>

" nerdtree
nnoremap <silent> <F7> :NERDTreeToggle<CR>

" vim-gutentags
let g:gutentags_cache_dir = './.git'
let g:gutentags_exclude = ['cache']

" vim-gitgutter
set updatetime=250
" 	preview hunk changes with hp but closes the buffer of the changes when the input pointer leaves the changed hunk.
au CursorMoved * if exists('*gitgutter#utility#is_active') && gitgutter#utility#is_active() |
      \   if empty(gitgutter#hunk#current_hunk()) |
      \     pclose |
      \   else |
      \     call gitgutter#preview_hunk() |
      \   endif |
      \ endif

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_php_phpcs_post_args = "--standard=PSR2" " Use the PSR-2 standard for PHP Code Sniffer
let g:syntastic_json_checkers = ['jsonlint'] " Use JSON linter

" Youcompleteme
let g:ycm_key_invoke_completion = '<C-a>'

" Ultisnips
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

