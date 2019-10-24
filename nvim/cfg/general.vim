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
set shiftwidth=4

" Let other language specific plugins handle this... (go / js conflicts)
set autoindent                    
set formatoptions=tcqronj         
set noexpandtab
set shiftround
set softtabstop=0
"set cindent
"set copyindent

set title                         " let vim set the terminal title
set updatetime=100                " redraw the status bar often
set wildmenu " autocomplete

highlight Pmenu ctermbg=gray guibg=gray
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE guifg=DarkGrey guibg=NONE

" Polyglot
syntax on

let g:neomake_logfile='/tmp/neomake.log'

" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'

" " Enable integration with airline.
let g:airline#extensions#ale#enabled = 1


" JavaScript
"let g:javascript_plugin_flow = 1

" Misc

if (has("termguicolors"))
	  set termguicolors
  endif

function! Refactor()
    call inputsave()
    let @z=input("What do you want to rename '" . @z . "' to? ")
    call inputrestore()
endfunction
