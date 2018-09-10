"===================================================================================================
" These entries are optimized for editing C/C++ files
"===================================================================================================
set nocompatible                    " Don't try to be compatible with vi; required
filetype off                        "required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()                 " required
Plugin 'VundleVim/Vundle.vim'       " let Vundle manage Vundle, required
Plugin 'w0rp/ale'                   " Provides live linting
Plugin 'vim-airline/vim-airline'    " Provides enhanced status bar and tab line
Plugin 'airblade/vim-gitgutter'     " Provides some git status info in the margin
call vundle#end()                   " required
filetype plugin indent on           " Load filetype-specific plugins and indent files; required

set exrc                            " Allow project-specific .vimrc
set secure                          " Improve security for project specific .vimrc
syntax enable                       " Enable syntax highligting
set autoindent                      " Use same indent from current line when starting a new line
set smartindent                     " Do smart autoindenting when starting a new line
set cindent                         " Do C-like indents
set number                          " Show line numbers
set relativenumber                  " Show relative line numbers
retab                               " Replace existing tabs with spaces
set expandtab                       " Expand new tabs to spaces
set smarttab                        " Allows backspacing over expanded tabs
set tabstop=4                       " Size of tab in spaces
set softtabstop=4                   " Allows backspacing over expanded tabs
set shiftwidth=4                    " Size of indent in spaces
set colorcolumn=101                 " Highlight specified column
set path+=**                        " Enables built-in fuzzy file find. No plugins needed.
set wildmenu                        " Enables enhanced menu of fuzzy matches
set laststatus=2                    " Always show status linee
set showcmd                         " Show command on last line of screen
set cursorline                      " Highlight current line
set scrolloff=3                     " Minimum lines to show above/below cursor
set incsearch                       " Search as characters are entered
set hlsearch                        " Highlight matches
set showmatch                       " Show matching bracket
set visualbell                      " Turn off beeping
"Use :MakeTags to generate tags file
command! MakeTags !ctags -R .
" Show tab line even when only 1 bufer
let g:airline#extensions#tabline#enabled=1
" Tweaks for browsing via netrw
let g:netrw_banner=0        " hide the banner
let g:netrw_browse_split=2  " open in vertically split window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

if has("autocmd")
    " Syntax file types ars fussy over tabs vs. spaces
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    " Remove trailing whitespace when saving certain types of files
    autocmd FileType c,cpp,java,php,vim autocmd BufWritePre <buffer> %s/\s\+$//e
endif

