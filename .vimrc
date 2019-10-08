let mapleader = " "

" This needs to be on for ctrlspace
set hidden
" Ward off unexpected distro bullshit
set nocompatible

" Editor settings
    " Enable mouse
    set mouse=a

    " Display (relative) line numbers
    set number relativenumber

    " Wrap lines longer then width of window
    set wrap
    " Wrap at end of words
    set linebreak
    " Hide end of line markers
    set nolist

    " Tabs should have the width of 4 spaces
    set tabstop=4
    set shiftwidth=4
    " Use spaces instead of tabs
    set expandtab

    " Highlight active line
    set cursorline

    " Ignore case when searching
    set ignorecase
    " Enable search while typing
    set incsearch

    " New splits should open below/right of current window
    set splitbelow splitright

    " Disable automatic comment insertion on newline in normal mode
    autocmd FileType * setlocal formatoptions-=o

    " Enable syntax highlight
    syntax on

    " Allow intelligent auto-indenting for each filetype
    filetype plugin indent on

    " Not really sure what happens here but it lines up function arguments nicely
    " (for c and c++ files at least)
    set noet sts=0 sw=4 ts=4
    set cinoptions=(0,u0,U0


" Keybinds
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


" Visuals
    hi Normal guibg=NONE ctermbg=NONE
    colorscheme srcery
    let g:airline_powerline_fonts=1
    set laststatus=2



" If tmux is active, set window title to be name of open file
augroup tmux
    autocmd!
    if exists('$TMUX')
        autocmd BufReadPost,FileReadPost,BufNewFile,FocusGained * call system("tmux rename-window " . expand("%:t"))
        autocmd VimLeave,FocusLost * call system("tmux set-window-option automatic-rename")
    endif
augroup END

" Hide bunch of stuff in inactive windows
augroup NumbersCursorLineOnlyInActiveWindow
    autocmd!
    autocmd VimEnter,WinEnter,BufWinEnter * set number | set cursorline
    autocmd WinLeave * set nonumber | set nocursorline
augroup END


execute pathogen#infect()
