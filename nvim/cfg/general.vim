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

highlight Pmenu ctermbg=gray guibg=gray
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE guifg=DarkGrey guibg=NONE

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

if (has("termguicolors"))
	  set termguicolors
  endif

function! Refactor()
    call inputsave()
    let @z=input("What do you want to rename '" . @z . "' to? ")
    call inputrestore()
endfunction
