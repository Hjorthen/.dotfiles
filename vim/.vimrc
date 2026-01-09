language messages English_UnitedStates
let $LANG = 'en_US'

" Use .vim as runtime path
set runtimepath^=$HOME/.vim

" Theming
syntax enable
set background=dark
colorscheme solarized
let g:airline_theme = 'deus'

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
if has('win32') || has('win64')
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
set softtabstop=4
set tabstop=4
set expandtab
set autoindent

" Other
set number
" Reload unchanged files if they changed outside Vim
set autoread

" Include the plugins on Windows where we can't make symlinks without Admin
" access
let s:dir = resolve(expand('<sfile>:p:h'))

let s:plugins_file = s:dir . '/.vimrc-plugins'
if filereadable(s:plugins_file)
    execute 'source ' . fnameescape(s:plugins_file)
endif

" :EditDotfiles
command EditDotfiles execute 'edit ' . fnameescape(s:dir)
