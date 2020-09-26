call plug#begin('~/.local/share/nvim/plugged')

" Basic requirements
Plug 'godlygeek/tabular'
Plug 'bling/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive' " Git
Plug 'TheZoq2/neovim-auto-autoread'
Plug 'romainl/vim-qf'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " LSP

" Languages
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'sebdah/vim-delve' " Go debug
Plug 'bfrg/vim-cpp-modern'
Plug 'rust-lang/rust.vim'

" Colorschemes
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()

set background=dark
colorscheme palenight
let g:airline_theme = "palenight"
