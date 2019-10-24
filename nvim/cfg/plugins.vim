call plug#begin('~/.local/share/nvim/plugged')

" Dependencies
Plug 'Shougo/neocomplcache'        " Depenency for Shougo/neosnippet
Plug 'godlygeek/tabular'           " This must come before plasticboy/vim-markdown
Plug 'tpope/vim-rhubarb'           " Depenency for tpope/fugitive<Paste>

" General plugins
Plug 'Shougo/denite.nvim' 
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'  " Default snippets for many languages
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'kien/ctrlp.vim'    
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/calendar.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-signify'
Plug 'mileszs/ack.vim'
Plug 'neomake/neomake'
Plug 'rbgrouleff/bclose.vim'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'sebdah/vim-delve'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vimwiki/vimwiki'
Plug 'TheZoq2/neovim-auto-autoread'
Plug 'romainl/vim-qf'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'arp242/gopher.vim'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Solidity
Plug 'tomlion/vim-solidity'

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Javascript
" Plug 'pangloss/vim-javascript'
" Plug 'tpope/vim-sleuth'
" Plug 'elzr/vim-json'
" Plug 'mxw/vim-jsx'
" Plug 'mattn/emmet-vim'

" Kotlin
"Plug 'udalov/kotlin-vim'
"Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
"Plug 'fwcd/kotlin-language-server'

" Colorschemes
Plug 'drewtempelmeyer/palenight.vim'

call plug#end()

set background=dark
colorscheme palenight
let g:airline_theme = "palenight"

" Go highlights
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_list_type = 'quickfix'
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_autoclose = 1
let g:go_gocode_unimported_packages = 1

"let g:go_auto_sameids = 1
let g:one_allow_italics = 1
let g:deoplete#enable_at_startup = 1

