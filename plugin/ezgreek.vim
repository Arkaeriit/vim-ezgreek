if !exists("g:ezgreekKey")
    let g:ezgreekKey="\<C-G>"
end

execute "inoremap " . g:ezgreekKey . " <Esc>:call ezgreek#setup()<Cr>:call feedkeys('i" . g:ezgreekKey . "')<Cr>"

