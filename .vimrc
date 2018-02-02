set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic'"

Plugin 'terryma/vim-multiple-cursors'

syntax enable
set background=dark
call vundle#end()            " required

"syntastic settings"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
filetype plugin on

" Put your non-Plugin stuff after this line
colorscheme afterglow

"backspace magic"
set backspace=2
"case insensitive"
set ic
"show relative line number"
set number relativenumber

"4 spaces is tab"
set tabstop=4
"indent properly"
set shiftwidth=4
