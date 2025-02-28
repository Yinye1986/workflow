call plug#begin()
Plug 'morhetz/gruvbox'
call plug#end()
" netrw 配置
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1

nnoremap <F5> :source $MYVIMRC<CR>
set nocompatible " vi兼容关
syntax on
set showmode
set showcmd
set mouse=a
set t_Co=256
set encoding=utf-8
filetype indent on

" 缩进
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" 外观
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let &t_SR = "\e[4 q"
set number
set relativenumber
" set cursorline
set textwidth=80

set nowrap " 不折行
" set linebreak
" set wrapmargin=2
set scrolloff=5
set sidescrolloff=15
set laststatus=2
set ruler

set showmatch " 括弧配对
colorscheme gruvbox
set bg=dark

" 移动
nnoremap u k
nnoremap e j
nnoremap n h
nnoremap i l
nnoremap <C-u> 6k 
nnoremap <C-e> 6j
nnoremap <C-n> gE
nnoremap <C-i> W
inoremap <C-u> <Up>
inoremap <C-e> <Down>
inoremap <C-n> <Left>
inoremap <C-i> <Right>
vnoremap u <Up>
vnoremap e <Down>
vnoremap n <Left>
vnoremap i <Right>
vnoremap <C-u> 6k
vnoremap <C-e> 6j
vnoremap <C-n> gE
vnoremap <C-i> W
vnoremap I :normal! >><CR>
vnoremap N :normal! <<<CR>
" 模式切换
nnoremap a i
inoremap <C-o> <Esc>

nnoremap R u:echo 'Undo'<CR>
nnoremap rr <C-r>:echo 'Redo'<CR>
nnoremap rp r
