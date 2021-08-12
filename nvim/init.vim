" Plugins
call plug#begin('~/.vim/plugged')

Plug 'flrnd/candid.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ggandor/lightspeed.nvim'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'

call plug#end()

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set number

" Color Scheme
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark
set t_Co=256
set termguicolors
syntax enable
colorscheme candid

nnoremap <C-p> :Telescope find_files theme=get_dropdown previewer=false find_command=rg,--ignore,--hidden,--files,-g,!.git<Cr>
nnoremap <C-e> :Telescope buffers theme=get_dropdown previewer=false<Cr>
