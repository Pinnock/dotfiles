set nocompatible                     " be iMproved, required
filetype off                         " required
set rtp+=~/.vim/bundle/Vundle.vim    " set the runtime path to include Vundle and initialize
call vundle#begin()                  " required
Plugin 'VundleVim/Vundle.vim'        " let Vundle manage Vundle, required
Plugin 'c.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-surround'
Plugin 'w0rp/ale'
Plugin 'airblade/vim-gitgutter'
call vundle#end()                    " required
filetype plugin indent on            " required
"All non-Plugin stuff go after this line
syntax on
set number
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

if has("autocmd")
    " Enable file type detection
    filetype on

    " Syntax of these languages is fussy over tabs vs. spaces
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    " Remove trailing whitespace when saving certain types of files
    autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> %s/\s\+$//e
endif

