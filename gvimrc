"set fu
"colorscheme seoul256
colorscheme flattr
set guifont=Consolas:h14
set transparency=5
set formatoptions=1 
set noexpandtab 
set wrap 
set linebreak 
"set spell spelllang=fr_FR

set guioptions=aAce
set showtabline=1
set wrapmargin=0

set filetype=markdown

autocmd VimEnter * set filetype=markdown
autocmd BufEnter * if &filetype == "" | setlocal ft=markdown | endif
autocmd VimEnter * Limelight
autocmd VimEnter * Goyo
