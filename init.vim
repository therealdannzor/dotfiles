" Main keybindings

let mapleader = ','                     
inoremap <C-s> <esc>:update<cr>            " save
nnoremap <C-s> :update<cr>
inoremap <C-d> <esc>:wq!<cr>               " save and exit
nnoremap <C-d> :wq!<cr>
inoremap <C-q> <esc>:qa!<cr>               " quit discarding changes
nnoremap <C-q> :qa!<cr>
inoremap <A-f> <esc>:NERDTreeToggle<cr>
nnoremap <A-f> :NERDTreeToggle<cr>
inoremap <Leader><Leader> <esc>:nohlsearch<cr>
nnoremap <Leader><Leader> :nohlsearch<cr>
inoremap <A-b> <esc>:GoBuild<cr>
nnoremap <A-b> :GoBuild<cr>
inoremap <C-o> <esc>:tabnew<cr>
nnoremap <C-o> :tabnew<cr>
inoremap <C-x> <esc>:tabclose<cr>
nnoremap <C-x> :tabclose<cr>

nnoremap <F4> :grep! "\<<cword>\>" . -r -I --exclude-dir={.git,references} <CR>:copen<CR>

map <silent> <Leader>lo :lopen<CR>
map <silent> <Leader>lc :lclose<CR>
map <silent> <Leader>qo :copen<CR>
map <silent> <Leader>qc :cclose<CR>
map <leader>bg :let &background = (&background == "dark"? "light" : "dark")<cr>



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
let g:go_list_type = 'quickfix'
let g:go_metalinter_autosave_enabled = ['vet', 'golint']
let g:go_list_autoclose = 1
let g:go_gocode_unimported_packages = 1 

highlight Pmenu ctermbg=8 guibg=#606060
highlight Pmenu ctermbg=1 guifg=#dddd00 guibg=#1f82cd
highlight PmenuSbar ctermbg=0 guibg=#d6d6d6

" Material colorscheme settings
let g:material_theme_style = 'dark'

" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

" " Enable integration with airline.
let g:airline#extensions#ale#enabled = 1

" Misc
let g:go_auto_sameids = 1
let g:one_allow_italics = 1
let g:deoplete#enable_at_startup = 1

call plug#begin('~/.local/share/nvim/plugged')

" Dependencies
Plug 'Shougo/neocomplcache'        " Depenency for Shougo/neosnippet
Plug 'godlygeek/tabular'           " This must come before plasticboy/vim-markdown
Plug 'tpope/vim-rhubarb'           " Depenency for tpope/fugitive<Paste>

" General plugins
Plug 'Shougo/denite.nvim' 
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'  " Default snippets for many languages
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'          " CtrlP is installed to support tag finding in vim-go
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

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Colorschemes
Plug 'NLKNguyen/papercolor-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'ayu-theme/ayu-vim'
Plug 'kaicataldo/material.vim'
Plug 'rakr/vim-one'

call plug#end()

let mapleader = ','			
inoremap <C-s> <esc>:update<cr>	           " save
nnoremap <C-s> :update<cr>
inoremap <C-d> <esc>:wq!<cr>               " save and exit
nnoremap <C-d> :wq!<cr>
inoremap <C-q> <esc>:qa!<cr>               " quit discarding changes
nnoremap <C-q> :qa!<cr>
inoremap <A-f> <esc>:NERDTreeToggle<cr>
nnoremap <A-f> :NERDTreeToggle<cr>
inoremap <Leader><Leader> <esc>:nohlsearch<cr>
nnoremap <Leader><Leader> :nohlsearch<cr>
inoremap <A-b> <esc>:GoBuild<cr>
nnoremap <A-b> :GoBuild<cr>
inoremap <C-o> <esc>:tabnew<cr>
nnoremap <C-o> :tabnew<cr>
inoremap <C-x> <esc>:tabclose<cr>
nnoremap <C-x> :tabclose<cr>
map <silent> <Leader>lo :lopen<CR>
map <silent> <Leader>lc :lclose<CR>
map <silent> <Leader>qo :copen<CR>
map <silent> <Leader>qc :cclose<CR>
map <leader>bg :let &background = (&background == "dark"? "light" : "dark")<cr>


" Colors

if (has("termguicolors"))
	  set termguicolors
  endif


"----------------------------------------------
" General settings
"----------------------------------------------
set autoindent                    " take indent for new line from previous line
set smartindent                   " enable smart indentation
set autoread                      " reload file if the file changes on the disk
set autowrite                     " write when switching buffers
set autowriteall                  " write on :quit
set clipboard=unnamedplus
set completeopt-=preview          " remove the horrendous preview window
set cursorline                    " highlight the current line for the cursor
set encoding=utf-8
set expandtab                     " expands tabs to spaces
set list                          " show trailing whitespace
set listchars=tab:\|\ ,trail:▫
set nospell                       " disable spelling
set noswapfile                    " disable swapfile usage
set nowrap
set noerrorbells                  " No bells!
set novisualbell                  " I said, no bells!
set number                        " show number ruler
set ruler
set formatoptions=tcqronj         " set vims text formatting options
set softtabstop=2
set tabstop=2
set title                         " let vim set the terminal title
set updatetime=100                " redraw the status bar often
set wildmenu " autocomplete

