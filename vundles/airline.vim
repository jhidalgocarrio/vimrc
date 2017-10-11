" lean & mean status/tabline for vim that's light as air
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

" fixes statusline only appearing in split windows mode
set laststatus=2
" source: https://github.com/Lokaltog/vim-powerline

" dont need showmode indicator now because using awesome Powerline :D
set noshowmode

let g:airline_theme                         = 'simple'
let g:airline_powerline_fonts               = 1
let g:airline#extensions#branch#enabled     = 1
let g:airline#extensions#syntastic#enabled  = 0
let g:airline_detect_paste                  = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_detect_modified               = 1
let g:airline#extensions#tagbar#enabled     = 1
let g:airline#extensions#tagbar#flags       = 'p'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
