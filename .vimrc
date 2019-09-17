set nocompatible                       " turn off vi compatible, should be first
set autoindent
set autoread                           " auto-reload unmodified buffers
set background=dark                    " make sure this is before colorschemes
set backspace=indent,eol,start         " backspacing over everything in insert

set display+=lastline                  " show as much of lastline possible

if has('vim_starting')
    set encoding=utf8
endif

" no bells or blinking
set noerrorbells
set novisualbell
set vb t_vb=

set directory=$XDG_CACHE_HOME/vim/swap//,~/tmp/vim//,~/tmp//,/var/tmp//,/tmp//
                                                    " swap files
set history=10000                                   " command line history
set hlsearch                           " highlight searches
set incsearch                          " do incremental searching

set laststatus=2                       " always show status line

set ruler                              " show the cursor position all the time

set showcmd                                 " display incomplete commands
set undodir=$XDG_CACHE_HOME/vim/undo,$HOME/tmp,/tmp

set wildmenu                                " file completion helper window

" end of the nvim already-defaults

let &viminfo = "'50,s100,n" . expand("$XDG_CACHE_HOME/vim/viminfo")

source ~/.config/nvim/init.vim
