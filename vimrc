set nocompatible              " required
filetype off                  " required

let g:python_host_prog = '/usr/bin/python3'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'benmills/vimux'
Plugin 'preservim/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'iamcco/markdown-preview.nvim'
Plugin 'morhetz/gruvbox'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()            " required
filetype plugin indent on    " required
"   ____      _                     _                         
"  / ___|___ | | ___  _ __ ___  ___| |__   ___ _ __ ___   ___ 
" | |   / _ \| |/ _ \| '__/ __|/ __| '_ \ / _ \ '_ ` _ \ / _ \
" | |__| (_) | | (_) | |  \__ \ (__| | | |  __/ | | | | |  __/
"  \____\___/|_|\___/|_|  |___/\___|_| |_|\___|_| |_| |_|\___|
"                   
set t_ut=
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"   " Fix colors for tmux
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"   " https://github.com/tmux/tmux/issues/1246
set termguicolors                        " Turn on 24bit colors
set background=dark                      " Dark colorscheme please
let g:gruvbox_italic=1                   " Italics are fine, just fine
let g:gruvbox_termcolors=16
colorscheme gruvbox

if has('mouse')
  if &term =~ 'xterm'
    set mouse=a
  else
    set mouse=nvi
  endif
endif

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
" __     ___                      
" \ \   / (_)_ __ ___  _   ___  __
"  \ \ / /| | '_ ` _ \| | | \ \/ /
"   \ V / | | | | | | | |_| |>  < 
"    \_/  |_|_| |_| |_|\__,_/_/\_\
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vc :VimuxCloseRunner<CR>
map <Leader>vz :VimuxZoomRunner<CR>
"  _   _ _____ ____  ____ _____              
" | \ | | ____|  _ \|  _ \_   _| __ ___  ___ 
" |  \| |  _| | |_) | | | || || '__/ _ \/ _ \
" | |\  | |___|  _ <| |_| || || | |  __/  __/
" |_| \_|_____|_| \_\____/ |_||_|  \___|\___|
let NERDTreeIgnore = ['\~$']
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeShowHidden = 1
"  _   _ _____ ____  ____ _____                      _ _   
" | \ | | ____|  _ \|  _ \_   _| __ ___  ___    __ _(_) |_ 
" |  \| |  _| | |_) | | | || || '__/ _ \/ _ \  / _` | | __|
" | |\  | |___|  _ <| |_| || || | |  __/  __/ | (_| | | |_ 
" |_| \_|_____|_| \_\____/ |_||_|  \___|\___|  \__, |_|\__|
"                                              |___/       
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
"     _    _      _ _            
"    / \  (_)_ __| (_)_ __   ___ 
"   / _ \ | | '__| | | '_ \ / _ \
"  / ___ \| | |  | | | | | |  __/
" /_/   \_\_|_|  |_|_|_| |_|\___|
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
set laststatus=2
if has("autocmd")
  augroup ft_statusline_background_colour
    au InsertEnter * hi StatusLine ctermfg=15 guifg=#FF3145
    au InsertLeave * hi StatusLine ctermfg=236 guifg=#CD5907
  augroup END
endif

