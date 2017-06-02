set fu
colorscheme seoul256
set guifont=Consolas:h14
set transparency=5
set formatoptions=1 
set noexpandtab 
set wrap 
set linebreak 
//set spell spelllang=fr_FR

set guioptions=aAce
set showtabline=1
set wrapmargin=0

set filetype=markdown

autocmd VimEnter * Goyo
autocmd VimEnter * Limelight
autocmd VimEnter * set filetype=markdown
autocmd BufEnter * if &filetype == "" | setlocal ft=markdown | endif


function! NoFile()
    if @% == ""
        belowright 12new +setl\ buftype=nofile
        set nowrap
        set conceallevel=2
        call matchadd('Conceal', '^\zs.*\ze\/.*\/.*\/', 10, 99, {'conceal': '…'})
        0put =v:oldfiles
        execute 'g/^/m0'
        execute 'normal! G'
        nnoremap <buffer> <CR> :call OpenMRUFile()<CR>
    endif
endfunction

function! OpenMRUFile()
    let l:file = getline('.')
    q
    execute 'e' l:file
endfunction

autocmd VimEnter * call NoFile()
