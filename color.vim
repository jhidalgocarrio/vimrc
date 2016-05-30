" Reverse visual mode color
hi Visual term=reverse cterm=reverse guibg=Grey
set background=dark

" coloscheme
if has('gui_running')
    set guifont=Monaco\ for\ Powerline:h13
end

silent! colorscheme solarized

" Normal text in more white color
hi Normal ctermfg=252

" Red background in bad spelling words
hi SpellBad ctermbg=124

"silent! colorscheme elflord
