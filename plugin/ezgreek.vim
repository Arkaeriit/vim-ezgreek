let g:ezgreekKey="\<C-G>"

execute "inoremap " . g:ezgreekKey . " <Esc>:call ezgreek#setup()<Cr>:call feedkeys('i" . g:ezgreekKey . "')<Cr>"

