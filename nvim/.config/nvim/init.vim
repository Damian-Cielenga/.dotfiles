"                __                
"  ___   __  __ /\_\    ___ ___    
"/' _ `\/\ \/\ \\/\ \ /' __` __`\  
"/\ \/\ \ \ \_/ |\ \ \/\ \/\ \/\ \ 
"\ \_\ \_\ \___/  \ \_\ \_\ \_\ \_\
" \/_/\/_/\/__/    \/_/\/_/\/_/\/_/
"
syntax on

if has('persistent_undo')               "check if your vim version supports
  set undodir=$HOME/.config/nvim/undo   "directory where the undo files will be stored
  set undofile                          "turn on the feature
endif

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set novb
set nobackup
set incsearch
set showmatch
set laststatus=0
set mouse=a
set clipboard=unnamed
set clipboard=unnamedplus
set nocompatible
filetype plugin on

" remaps
let mapleader = " "
map q <Nop>
vnoremap <C-C> :w !xclip -i -sel c<CR><CR> 
" run current file
nnoremap <Leader>2 :w<CR>:!python3 %<CR>
" run example file for aoc
nnoremap <Leader>3 :w<CR>:!python3 % example<CR>

"plugins
call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'vimwiki/vimwiki'
Plug 'jiangmiao/auto-pairs'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'owickstrom/vim-colors-paramount'
Plug 'projekt0n/github-nvim-theme'
Plug 'EdenEast/nightfox.nvim'
Plug 'nikolvs/vim-sunbather'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'
call plug#end()


source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/paramount.vim

colorscheme nightfox
