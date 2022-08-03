"----------------------------------------------
" General settings
"----------------------------------------------
set autoread                      " reload file if the file changes on the disk
set autowrite                     " write when switching buffers
set autowriteall                  " write on :quit
set clipboard=unnamedplus
set completeopt-=preview          " remove the horrendous preview window
set cursorline                    " highlight the current line for the cursor
set encoding=utf-8
set list                          " show trailing whitespace
set listchars=tab:\|\ ,trail:▫
set nospell                       " disable spelling
set noswapfile                    " disable swapfile usage
set nowrap
set noerrorbells                  " No bells!
set novisualbell                  " I said, no bells!
set number                        " show number ruler
set ruler
set tabstop=4

" Let other language specific plugins handle this... (go / js conflicts)
set autoindent                    
set formatoptions=tcqronj         
set expandtab
set shiftround
set softtabstop=1
"set cindent
"set copyindent

set title                         " let vim set the terminal title
set updatetime=100                " redraw the status bar often
set wildmenu " autocomplete

" enable project specific rc's (cpp lint)
"set exrc
"set secure

highlight Pmenu ctermbg=gray guibg=gray
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE guifg=DarkGrey guibg=NONE

" Polyglot
syntax enable

let g:neomake_logfile='/tmp/neomake.log'

" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

" " Enable integration with airline.
let g:airline#extensions#ale#enabled = 1

" LSP
let g:coc_force_debug = 1

" JavaScript
let g:javascript_plugin_flow = 1
let g:syntastic_javascript_checkers = ['eslint']
autocmd Filetype javascript setlocal shiftwidth=2
autocmd Filetype solidity setlocal shiftwidth=4

" Misc

"if (has("termguicolors"))
"	  set termguicolors
"endif

function! Refactor()
    call inputsave()
    let @z=input("What do you want to rename '" . @z . "' to? ")
    call inputrestore()
endfunction

"let g:python_host_prog="/Users/kadanis/Library/Python/3.6/bin/"
