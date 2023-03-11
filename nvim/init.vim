" Main keybindings

let mapleader = ','
inoremap <C-s> <esc>:update<cr>            " save
nnoremap <C-s> :update<cr>
inoremap <C-d> <esc>:wq!<cr>               " save and exit
nnoremap <C-d> :wq!<cr>
inoremap <C-q> <esc>:qa!<cr>               " quit discarding changes
nnoremap <C-q> :qa!<cr>
inoremap <C-f> <esc>:NERDTreeToggle<cr>
nnoremap <C-f> :NERDTreeToggle<cr>
inoremap <C-k> <esc>:FZF<cr>
nnoremap <C-k> :FZF<cr>
inoremap <Leader><Leader> <esc>:nohlsearch<cr>
nnoremap <Leader><Leader> :nohlsearch<cr>

inoremap <F2> <esc>:tabnew<cr>
nnoremap <F2> :tabnew<cr>
inoremap <C-c> <esc>:tabclose<cr>
nnoremap <C-c> :tabclose<cr>

nnoremap <F4> :GoReferrers<cr>
nnoremap <A-b> :GoBuild!<cr>
inoremap <A-b> <esc> :GoBuild!<cr>
nnoremap <A-t> :!make test<cr>
inoremap <A-t> <esc> :!make test<cr>

map <silent> <Leader>lo :lopen<CR>
map <silent> <Leader>lc :lclose<CR>
map <silent> <Leader>qo :copen<CR>
map <silent> <Leader>qc :cclose<CR>
map <silent> <Leader>dc :GoDecls<CR>
map <silent> <Leader>gdc :GoDeclsDir<CR>
map <silent> <Leader>gtf :GoTestFunc<CR>
map <silent> <Leader>docs :GoDoc<CR>
map <silent> <Leader>find :GoDec<CR>

"Scroll like web browser
nnoremap <C-Down> <C-E>
nnoremap <C-Up> <C-Y>

set mouse=a


"if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
"if (has("termguicolors"))
"  set termguicolors
" endif

" Disable some annoying increment/decrement
map <C-a> <Nop>
map <C-x> <Nop>

" Run rest of the conf files
runtime! ./cfg/*
