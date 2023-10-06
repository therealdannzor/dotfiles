call plug#begin('~/.local/share/nvim/plugged')

" Basic requirements
Plug 'godlygeek/tabular'
Plug 'bling/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive' " Git
Plug 'TheZoq2/neovim-auto-autoread'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'preservim/nerdcommenter'

Plug 'neoclide/coc.nvim', { 'branch': 'release' } " LSP
"Plug 'neoclide/coc.nvim', {'commit': '891d1687ac3aa8ae2c5d92cb5cf0bb8c736bf0f1'}
let g:coc_default_semantic_highlight_groups = 0


" Languages
Plug 'neovim/nvim-lspconfig'
"Plug 'ycm-core/YouCompleteMe'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc-rls'
Plug 'TovarishFin/vim-solidity'
Plug 'pangloss/vim-javascript'
Plug 'vim-autoformat/vim-autoformat'

let g:rustfmt_autosave = 1
let g:LanguageClient_serverCommands = { 'rust': ['rust-analyzer'], }

" Colorschemes
Plug 'vim-airline/vim-airline-themes'
Plug 'navarasu/onedark.nvim'

set redrawtime=10000

filetype plugin indent on

" Use homebrew's clangd
let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'

call plug#end()
let g:airline_theme = 'onedark'
colorscheme onedark

let indoors = 1
if indoors
	let g:onedark_config = {
		\ 'style': 'warmer',
	\}
	let g:airline_theme = 'onedark'
	colorscheme onedark
else
	set background=light
	colorscheme PaperColor
	let g:airline_theme = 'papercolor'
endif
