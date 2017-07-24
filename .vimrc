
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <F5> :GundoToggle<CR>

set tabstop=2
set softtabstop=0 noexpandtab

" open nerdtree automatically when no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open nerdtree automatically when opening directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

""" Vundle plugins

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" add new plugins here
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'bling/vim-airline'

call vundle#end()

" set python interpreter for ycmd to python 2
let g:ycm_server_python_interpreter = 'python2'

execute pathogen#infect()
syntax on
filetype plugin indent on
