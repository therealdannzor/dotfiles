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

inoremap <C-o> <esc>:tabnew<cr>
nnoremap <C-o> :tabnew<cr>
inoremap <C-x> <esc>:tabclose<cr>
nnoremap <C-x> :tabclose<cr>

nnoremap <F4> :GoReferrers<cr>
nnoremap <A-b> :GoBuild!<cr>
inoremap <A-b> <esc> :GoBuild!<cr>
nnoremap <A-t> :GoTest!<cr>
inoremap <A-t> <esc> :GoTest!<cr>

map <silent> <Leader>lo :lopen<CR>
map <silent> <Leader>lc :lclose<CR>
map <silent> <Leader>qo :copen<CR>
map <silent> <Leader>qc :cclose<CR>
map <silent> <Leader>dc :GoDecls<CR>
map <silent> <Leader>gdc :GoDeclsDir<CR>
map <silent> <Leader>gtf :GoTestFunc<CR>
map <silent> <Leader>docs :GoDoc<CR>
map <silent> <Leader>find :GoDec<CR> 

" Locally (local to block) rename a variable
nmap <Leader>rf "zyiw:call Refactor()<cr>mx:silent! norm gd<cr>[{V%:s/<C-R>//<c-r>z/g<cr>`x

runtime! ./cfg/*
