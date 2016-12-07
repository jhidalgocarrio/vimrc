" display the indent levels with thin vertical lines
NeoBundle 'Yggdroot/indentLine'

" This plugin takes advantage of the newly provided conceal feature in Vim 7.3, so this plugin will not work with lower versions of Vim.
let g:indentLine_char = '┆'

" Only use the conceal Unicode glyph symbol in normal mode
set cocu=n
