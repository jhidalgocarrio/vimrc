" Powerful shell implemented by vim.
NeoBundle 'Shougo/vimshell.vim'

" Enable 80 chractares width
setlocal textwidth=80

let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
if exists("*strftime")
    let g:vimshell_right_prompt = 'strftime("%F %T")'
end
