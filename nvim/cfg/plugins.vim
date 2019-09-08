call plug#begin('~/.local/share/nvim/plugged')

" Dependencies
Plug 'Shougo/neocomplcache'        " Depenency for Shougo/neosnippet
Plug 'godlygeek/tabular'           " This must come before plasticboy/vim-markdown
Plug 'tpope/vim-rhubarb'           " Depenency for tpope/fugitive<Paste>

" General plugins
Plug 'Shougo/denite.nvim' 
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
"Plug 'Shougo/neosnippet'
"Plug 'Shougo/neosnippet-snippets'  " Default snippets for many languages
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'          " CtrlP is installed to support tag finding in vim-go
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/calendar.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
" Plug 'majutsushi/tagbar'
Plug 'mhinz/vim-signify'
Plug 'mileszs/ack.vim'
Plug 'neomake/neomake'
Plug 'rbgrouleff/bclose.vim'
Plug 'sbdchd/neoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'sebdah/vim-delve'
"Plug 'terryma/vim-multiple-cursors'
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
"Plug 'pangloss/vim-javascript'
"Plug 'tpope/vim-sleuth'
"Plug 'elzr/vim-json'
"Plug 'mxw/vim-jsx'
"Plug 'mattn/emmet-vim'

" Kotlin
"Plug 'udalov/kotlin-vim'
"Plug 'autozimu/LanguageClient-neovim', {'branch': 'next', 'do': 'bash install.sh'}
"Plug 'fwcd/kotlin-language-server'

" Colorschemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'ayu-theme/ayu-vim'
Plug 'kaicataldo/material.vim'
Plug 'rakr/vim-one'

call plug#end()
