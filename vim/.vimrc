language messages English_UnitedStates
let $LANG = 'en_US'

" Use .vim as runtime path
set runtimepath^=$HOME/.vim

" Theming
syntax enable
set background=dark
colorscheme solarized

if has('gui_running')
        " Default to en_US in case the menu is showing
        set langmenu=en_US
        " Hide toolbar and menu
        set guioptions-=T
        set guioptions-=m

        " Hide scrollbar
        set guioptions-=r
        set guioptions-=R
        set guioptions-=l
        set guioptions-=L

        " Remove GUI tabline
        set guioptions-=e
endif
if has('win32') || has('win32')
        set shell=powershell.exe
endif


" Disable bells
set noerrorbells
set novisualbell
set belloff=all

" No backup files
set nobackup
set noswapfile
set noundofile


" let g:netrw_http_cmd


" Tabs
set softtabsstop=4
set tabstop=4
set expandtab
set autoindent

" Other
set number
set autoread

if filereadable(expand('~\.vimrc-plugins'))
    source ~\.vimrc-plugins
endif
