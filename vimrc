set nocompatible              " required
filetype off                  " required

let g:python_host_prog = '/usr/bin/python3'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'sjl/badwolf'

call vundle#end()            " required
filetype plugin indent on    " required

set backspace=2         " Make backspace work for indent, eol, start
set noerrorbells        " No beeps
set history=1000	" keep 1000 lines of command line history
set ruler		" show the cursor position all the time
set incsearch           " Incomplete search matches
set hlsearch            " Keep search highlight after complete
set relativenumber      " Show line numbers
set showmode            " Show the current mode in the last line
set showcmd             " Show the current command in the last line
set showmatch           " Highlight matching brackets
set wildmenu            " Improve tab completion menu
set wildmenu		" display completion matches in a status line
set encoding=utf-8      " Default to UTF-8
set scrolloff=2		" start scrolling 2 lines from the screen edge
syntax on               " Enable syntax highlighting
set background=dark     " Tell vim we're using a dark colourscheme
colorscheme badwolf     " Make it prettya

if has('mouse')
  if &term =~ 'xterm'
    set mouse=a
  else
    set mouse=nvi
  endif
endif

"  __  __            _       _                     
" |  \/  | __ _ _ __| | ____| | _____      ___ __  
" | |\/| |/ _` | '__| |/ / _` |/ _ \ \ /\ / / '_ \ 
" | |  | | (_| | |  |   < (_| | (_) \ V  V /| | | |
" |_|  |_|\__,_|_|  |_|\_\__,_|\___/ \_/\_/ |_| |_|
"                                                  
"  ____                 _               
" |  _ \ _ __ _____   _(_) _____      __
" | |_) | '__/ _ \ \ / / |/ _ \ \ /\ / /
" |  __/| | |  __/\ V /| |  __/\ V  V / 
" |_|   |_|  \___| \_/ |_|\___| \_/\_/  
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1

set exrc
set secure
