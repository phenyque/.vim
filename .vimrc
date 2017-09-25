" Some remaps
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>qq :q!<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>h :nohlsearch<CR>
nnoremap <Leader>s <C-w>w

" 'reusable' indentation with </>
vnoremap < <gv
vnoremap > >gv

" tab adjustments
set expandtab
set shiftwidth=2
set softtabstop=2
set hlsearch
set autoindent

filetype on
filetype plugin on
filetype indent on

" show line numbers and stuff
set number
set tw=79
set nowrap
set fo-=t
set colorcolumn=80

" automatically reload .vimrc
autocmd! bufwritepost .vimrc source %

" Copy and paste from system clipboard
set clipboard=unnamed

" adjustment needed because lightline does not show up
set laststatus=2

" open nerdtree automatically when no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open nerdtree automatically when opening directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

""" lightline config
let g:lightline = {
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ },
    \ }

" Pathogen plugin activation
execute pathogen#infect()
syntax on
filetype plugin indent on

" set python interpreter for ycmd to python 2
let g:ycm_server_python_interpreter = 'python2'

" global compile flags for ycm
let g:ycm_global_ycm_extra_conf = '~/.vim/global_ycm_extra_conf.py'

" Solarized colorscheme
set background=dark
colorscheme solarized
