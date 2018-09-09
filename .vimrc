set nocompatible                    " Don't try to be compatible with vi
set exrc
set secure
filetype indent on
syntax enable
set autoindent
set smartindent
set number
set relativenumber
set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set colorcolumn=101
set path+=**                        " Enables built-in fuzzy file find. No plugins needed.
set wildmenu                        " Enables enhanced menu of fuzzy matches
set laststatus=2                    " Always show status linee
set showcmd
command! MakeTags !ctags -R .       "Use :MakeTags to generate tags file
" Tweaks for browsing via netrw
let g:netrw_banner=0        " hide the banner
let g:netrw_browse_split=4  " open in prior window
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

