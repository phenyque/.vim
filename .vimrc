set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'dense-analysis/ale'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
Plugin 'Yggdroot/indentLine'
Plugin 'itchyny/lightline.vim'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ervandew/supertab'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'phenyque/vim-pbrt'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'tpope/vim-eunuch'
Plugin 'frazrepo/vim-rainbow'
Plugin 'adelarsq/vim-matchit'
Plugin 'yegappan/taglist'
Plugin 'jremmen/vim-ripgrep'
Plugin 'psf/black'
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on

" fzf plugin as installed via homebrew
set rtp+=/usr/local/opt/fzf
let g:fxf_layout = { 'down' : '40%' }

let $PATH = '/usr/local/bin/:'.$PATH

 "Some remaps
let mapleader = "\<Space>"
" save
nnoremap <Leader>w :w<CR>
" quit
nnoremap <Leader>q :q<CR>
" rage quit (not saving changes)
nnoremap <Leader>Q :q!<CR>
" toggle nerdtree
nnoremap <Leader>n :NERDTreeToggle<CR>
" deactivate highlighting after searching
nnoremap <Leader>h :nohlsearch<CR>
" switch between splits
nnoremap <Leader>s <C-w>w
" toggle relative/absolute line numbering
nnoremap <Leader>r :set relativenumber!<CR>
" fixit command of ycm
nnoremap <Leader>f :YcmCompleter FixIt<CR>
" search and replace word under current cursor
nnoremap <F6> :%s/<C-r><C-w>/
" FZF start command
nnoremap <Leader>z :FZF<CR>
" keep register content after pasting
xnoremap p "_dP

" toggle relative and absolute line numbering automatically
:augroup numbertoggle
:   autocmd!
:   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:   autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
:augroup END

" 'reusable' indentation with </>
vnoremap < <gv
vnoremap > >gv

" tab adjustments
set expandtab
set shiftwidth=2
set softtabstop=2
set hlsearch
set incsearch
set autoindent
set smartcase

filetype on
filetype plugin on
filetype indent on

" fix for problem with solarized terminal colours and vim
set term=xterm-256color

" show line numbers and stuff
set number
set nowrap
set fo-=t
set colorcolumn=80

" move cursor with mouse
set mouse=a

" utf-8 encoding as default
set encoding=utf-8

" automatically reload .vimrc
autocmd! bufwritepost .vimrc source %

" Copy and paste from system clipboard FIXME: this does not work on Ubuntu,
" but on Mac ??
set clipboard=unnamed

" Automatically activate paste mode when pasting in insert mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

"" Gitgutter settings
" update time
set updatetime=100

" open nerdtree automatically when no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" open nerdtree automatically when opening directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

""" lightline config
" this is needed because lightline does not show up
set laststatus=2

let g:lightline = {
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'gitbranch': 'fugitive#head'
    \ },
    \ }

syntax on
filetype plugin indent on

" set python interpreter for ycmd to python 3
let g:ycm_server_python_interpreter = 'python3'

" global compile flags for ycm
let g:ycm_global_ycm_extra_conf = '~/.vim/global_ycm_extra_conf.py'

let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_complete_in_comments=1

" fix annoying problem with vim-autoclose and ycm completion window when hitting esc
let g:AutoClosePumvisible = {"ENTER": "", "ESC": ""}

" raindow brackets for all file types
let g:rainbow_active = 1

" Solarized colorscheme
set background=dark
colorscheme solarized

" highlight TODO in files
if has("autocmd")
  " Highlight TODO, FIXME, NOTE, etc.
  if v:version > 701
    autocmd WinEnter,VimEnter * :silent! call matchadd('WarningMsg',  '\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\)')
    autocmd Winenter,VimEnter * :silent! call matchadd('ErrorMsg', '\W\zs\(NOTE\|INFO\|IDEA\|ERROR\)')
  endif
endif

"" Nerdcommenter
let g:NERDTrimTrailingWhitespace=1
let g:NERDAltDelims_c = 1
