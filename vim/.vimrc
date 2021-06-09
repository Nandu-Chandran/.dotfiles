syntax on

set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set shiftwidth=4
set smartindent
set nu
set nowrap
set tabstop=4 softtabstop=4
set expandtab
set noswapfile
set nobackup
set number relativenumber
set undodir=~/.vim/undodir
set undofile

set noerrorbells
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"copy paste
vnoremap <C-c> "+y
map <C-p> "+p

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


"vim plugs
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'
Plug 'tpope/vim-fugitive'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-commentary'

call plug#end()


colorscheme gruvbox
set background=dark

"vimwiki
set nocompatible
filetype plugin on
"comment on markdown files
autocmd Filetype vimwiki setlocal commentstring=<!--%s-->

let g:vimwiki_list = [{'path':'~/Documents/vimwiki/','syntax':'markdown','ext':'.md'}]
let g:vimwiki_ext2syntax = {'.md':'markdown','.markdown':'markdown','.mdown':'markdown'}

let g:vimwiki_markdown_link_ext = 1

let g:markdown_folding = 1

"let g:vimwiki_list = [{
"    \ 'path': '~/Documents/vimwiki/',
"    \ 'path_html': '~/Documents/vimwiki/site/',
"    \ 'custom_wiki2html': '~/.dotfiles/vimwiki/wiki2html.py',
"    \ 'template_path': '~/Documents/vimwiki/templates',
"    \ 'template_default':'default',
"    \ 'template_ext':'.html',
"    \ 'syntax': 'markdown',
"    \ 'ext': '.md',
"    \ }]
