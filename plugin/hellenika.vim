if !exists("g:hellenikaKey")
    let g:hellenikaKey = "\<C-G>"
end

execute "inoremap " . g:hellenikaKey . " <Esc>:call hellenika#setup()<Cr>:call feedkeys('i" . g:hellenikaKey . "')<Cr>"

