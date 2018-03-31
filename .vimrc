set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic'"

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

"c++14"
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++14 -stdlib=libc++'
filetype plugin on

" Put your non-Plugin stuff after this line
colorscheme afterglow

"enables more reg backspace"
set backspace=2
"case insensitive"
set ic
set number relativenumber

"4 spaces is tab"
set tabstop=4
"indent properly"
set shiftwidth=4


" Highlight long lines (>80)

autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929 
autocmd BufEnter * match OverLength /\%81v.*/
autocmd BufEnter * let w:long_line_match = 1

fu! LongLineHighlightToggle()
  highlight OverLength ctermbg=darkgrey guibg=#592929 
  if exists('w:long_line_match') 
    match OverLength //
    unlet w:long_line_match
  else 
    match OverLength /\%81v.*/
    let w:long_line_match = 1
  endif
endfunction
map <Leader>l :call LongLineHighlightToggle()<CR>
