" Vundle configuration (plugin manager)
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold' " fold class, method, function only
Plugin 'vim-scripts/indentpython.vim' " au indent specific for python
Plugin 'Valloric/YouCompleteMe' " au-completion specific for python

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Specify where the split should occur
set splitbelow
set splitright

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Let docstring
let g:SimpylFold_docstring_preview=1

" Handle proper indentation (PEP-8 standard)
au FileType py set tabstop=4
au FileType py set softtabstop=4
au FileType py set shiftwidth=4
au FileType py set textwidth=79
au FileType py set expandtab
au FileType py set autoindent
au FileType py set fileformat=unix

" Spot tabs and space
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set statusline=%F%m%r%h%w\ [TYPE=%Y\ %{&ff}]\
\ [%l/%L\ (%p%%)
au FileType py match BadWhitespace /\s\+$/

" Let vim know that it's better to work in UTF-8 with python
set encoding=utf-8

