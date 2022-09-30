set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin("~/.config/nvim/bundle")
	" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'ctrlpvim/ctrlp.vim'
	Plugin 'dense-analysis/ale'
    Plugin 'vim-airline/vim-airline'
    Plugin 'hashivim/vim-terraform'
call vundle#end()            

" Configure ctrlp
let g:ctrlp_show_hidden=1
let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn)$'
