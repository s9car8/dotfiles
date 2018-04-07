" General purpose settings. 
set nocompatible

" Vip Plug requests
call plug#begin('~/.vim/plugged')

" Hard Mode disables keys whick allow one to rely on character wise navigation.
Plug 'wikitopian/hardmode'

" JellyBeans colorscheme.
Plug 'nanotech/jellybeans.vim'

" EasyMotion pluging allow perform effective two steps search.
Plug 'easymotion/vim-easymotion'

" Auto Pairs
Plug 'jiangmiao/auto-pairs'

" Allow surround something by (), {}, '' and etc.
Plug 'tpope/vim-surround'

" This plugin only shows relative line numbers.
Plug 'ericbn/vim-relativize'

" Fuzzy file, buffer, mru, tag, ... finder.
Plug 'kien/ctrlp.vim'

" This plugin deletes trailing whitespaces on every write.
Plug 'raviqqe/vim-nonblank'

call plug#end()

" Hard Mode enabling.
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" VIEW ------------------------------------------------------------ {{{

" Colorscheme settings.
set rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim/
set laststatus=2
set showtabline=1
set t_Co=256

" Highlight current line
set cursorline

" }}}

" MAPPING ------------- {{{
let mapleader = ";"
inoremap jk <esc>
inoremap <esc> <nop>

" Turn off arrow keys.
noremap <Up>    <NOP>
noremap <Down>  <NOP>
noremap <Left>  <NOP>
noremap <Right> <NOP>

inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

noremap <leader>ev :e $MYVIMRC<cr>
noremap <leader>sv :source $MYVIMRC<cr>

nnoremap d* diw
nnoremap c* ciw

nnoremap <leader>h :nohlsearch<cr>

nnoremap <silent><F2> :RelativizeToggle<cr>
vnoremap <C-W> i{
" }}}

" Set indentation parameters. --- {{{
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent
" }}}

" Set view.
set relativenumber
syntax on
colorscheme jellybeans
set background=dark

" Set search settings.
set hlsearch
set incsearch
set wildmenu

" Vimscript file settings. ---------------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" C/C++ preferences ----------------------------------------- {{{
augroup FileType_cpp
    autocmd FileType cpp :iabbrev <buffer> r; return;<left>
    autocmd FileType cpp :inoremap <buffer> #i< #include <><left>
    autocmd FileType cpp :inoremap <buffer> #i" #include ""<left>
augroup END
" }}}

" Testing
let maplocalleader = "\\"

iabbrev @@ karatach1998@gmail.com
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
cnoremap <leader>' <esc>`>a'<esc>`<i'<esc>lel
autocmd FileType python :iabbrev <buffer> if: if:<left>


