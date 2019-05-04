" enable syntax highlighting
syntax enable

" show line numbers
" set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

"" expand tabs into spaces
"set expandtab
"
" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
" let python_highlight_all = 1

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'posva/vim-vue'

call vundle#end() " required

"NERD Tree commands
"open NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree
"close vim if NERDTree is the only window left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeNodeDelimiter = "\u00a0"
let g:vue_disable_pre_processors=1
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css.less.pug
"yaml funs
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
