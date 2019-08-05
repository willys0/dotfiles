"Enable syntax highlight"
syntax on

"Ward off unexpected distro bullshit"
set nocompatible

"Allow intelligent auto-indenting for each filetype"
filetype plugin indent on

set wrap
set linebreak
set nolist

set cursorline

"Set tabs"
"set autoindent"
"set noexpandtab"
"set tabstop=4"
"set shiftwidth=4"

"Ignore case when searching"
set ignorecase

"Enable search while typing"
set incsearch

"Enable mouse"
set mouse=a

"Display line numbers"
set number
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

"Remap mapleader"
let mapleader = " "

"highlight Normal ctermbg=none

"Keybinds"
vmap <C-c> "+y

nnoremap <C-p> "+p
"vmap <C-p> "+p
nnoremap <Space> <NOP>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-n> <C-w>n


let g:airline_powerline_fonts=1
set laststatus=2

hi Normal guibg=NONE ctermbg=NONE

colorscheme srcery

execute pathogen#infect()
