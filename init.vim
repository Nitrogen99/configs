" Configuartion file for vim.
" Place in your .vimrc file.

" Instructions (For Rust LSP):
" 1- Install Plug:
"    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 2- Install Nodejs:
"    curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
"    sudo apt install -y nodejs
" 3- Call PlugInstall
" 4- Call CocInstall coc-rust-analyzer

:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set relativenumber

call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhartington/oceanic-next'

call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme OceanicNext

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
