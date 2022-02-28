set tabstop=4 shiftwidth=4 expandtab
set laststatus=2
set showtabline=2
set noshowmode
set showcmd
set nu
set updatetime=100
set omnifunc=syntaxcomplete#Complete
set mouse=a
filetype plugin indent on

" SuperTab options
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

" git-gutter options
highlight! link SignColumn LineNr
let g:gitgutter_set_sign_backgrounds = 1
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'dense-analysis/ale'
Plug 'ervandew/supertab'
Plug 'davidhalter/jedi-vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
call plug#end()
