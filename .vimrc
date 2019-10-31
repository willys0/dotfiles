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

    " Highlight column 81 (to identify long lines)
    set colorcolumn=81

    " Ignore case when searching
    set ignorecase
    " Enable search while typing
    set incsearch 

    " Menu when autocompleting commands
    set wildmenu

    " New splits should open below/right of current window
    set splitbelow splitright

    " Enable folding by syntax
    set foldmethod=syntax
    " Unfold everything at start
    set foldlevel=99
    " Limit fold nesting
    set foldnestmax=1


    " Enable syntax highlight
    syntax on

    " Allow intelligent auto-indenting for each filetype
    filetype plugin indent on

    " Not really sure what happens here but it lines up function arguments nicely
    " (for c and c++ files at least)
    set cinoptions=(0,u0,U0

    " Disable automatic comment insertion on newline in normal mode
    autocmd FileType * setlocal formatoptions-=o

" Keybinds
    " Inverse tab with shift-tab
    inoremap <S-Tab> <C-d>

    " Make leader+w act as a shorthand for managing windows
    nmap <Leader>w <C-w>

    " Copy to system clipboard with ctrl+y
    nnoremap <C-y> "+y
    vnoremap <C-y> "+y

    " Paste from system clipboard with ctrl+p
    nnoremap <C-p> "+p
    inoremap <C-p> <ESC>"+pa
    vnoremap <C-p> "+p

    " Switch panes
    nmap <C-h> <C-w>h
    nmap <C-j> <C-w>j
    nmap <C-k> <C-w>k
    nmap <C-l> <C-w>l
    nmap <C-n> <C-w>n

    " Fast buffer list + switch with double leader
    nmap <Leader><Leader> <Esc>:buffers<Enter>:b 
    " Fast buffer list + kill with leader b and k
    nmap <Leader>bk <Esc>:buffers<Enter>:bd 

    " Unfold whatever is at current position
    nnoremap <Leader>ff @=(foldlevel('.')?'za':"\<Space>")<CR>
    " Fold and unfold everything
    nmap <Leader>fa :setlocal foldlevel=0<CR>
    nmap <Leader>fn :setlocal foldlevel=99<CR>

" Visuals
    hi Normal guibg=NONE ctermbg=NONE
    colorscheme srcery
    let g:airline_powerline_fonts=1
    set laststatus=2

    " Highlight text as red on long lines
    highlight LineExcess ctermbg=8
    call matchadd('LineExcess', '\%81v.*', 100)

    " Highlight trailing whitespace
    highlight TrailingWhitespace ctermbg=black
    autocmd InsertEnter * highlight TrailingWhitespace ctermbg=none
    autocmd InsertLeave * highlight TrailingWhitespace ctermbg=red
    call matchadd('TrailingWhitespace', '\s\+$', 100)


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

" Plugins
    nnoremap <Leader>wr :WinResizerStartResize<CR>

    nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

    let g:rainbow_active = 1
    let g:rainbow_conf = {
    \	'guifgs': ['Blue', 'Magenta', 'Green'],
    \	'ctermfgs': ['Blue', 'Magenta', 'Green'],
    \	'guis': [''],
    \	'cterms': [''],
    \	'operators': '_,_',
    \	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold']
    \}
    execute pathogen#infect()
