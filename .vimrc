" Enable syntax highlight
syntax on

" This needs to be on for ctrlspace
set hidden

" Ward off unexpected distro bullshit
set nocompatible

" Allow intelligent auto-indenting for each filetype"
filetype plugin indent on

" Not really sure what happens here but it lines up function arguments nicely
" (for c and c++ files at least)
set noet sts=0 sw=4 ts=4
set cinoptions=(0,u0,U0

set wrap
set linebreak
set nolist

" Tabs should have the width of 4 spaces
set tabstop=4
set shiftwidth=4
" Use spaces instead of tabs
set expandtab

set cursorline

" Ignore case when searching
set ignorecase

" Enable search while typing
set incsearch

" Enable mouse
set mouse=a

" Display line numbers
set number

" Relative numbers for active buffer
" augroup numbertoggle
" 	autocmd!
" 	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
" 	autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
" augroup END


"##########"
" KEYBINDS "
"##########"
"
" Remap leader to spacebar
let mapleader = " "

" Make leader+w act as a shorthand for managing windows
nmap <Leader>w <C-w>

" Copy to system clipboard with ctrl+y
nnoremap <C-y> "+y
vnoremap <C-y> "+y

" Paste from system clipboard with ctrl+p
nnoremap <C-p> "+p
inoremap <C-p> <ESC>"+pa

" Switch panes
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <C-n> <C-w>n


"#########"
" VISUALS "
"#########"

hi Normal guibg=NONE ctermbg=NONE
colorscheme srcery
let g:airline_powerline_fonts=1
set laststatus=2

" Hide bunch of stuff in inactive windows
augroup NumbersCursorLineOnlyInActiveWindow
	autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter * set number | set cursorline
	autocmd WinLeave * set nonumber | set nocursorline
augroup END

execute pathogen#infect()
