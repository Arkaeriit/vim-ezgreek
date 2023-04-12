" Return the lowercase latin equivalent for the input greek letter
function hellenika#LatinEquivalent(greek)
    let l:l = tolower(a:greek)
    if l:l == "α"
        return ["a"]
    elseif l:l == "β"
        return ["b"]
    elseif l:l == "γ"
        return ["g"]
    elseif l:l == "δ"
        return ["d"]
    elseif l:l == "ε"
        return ["e"]
    elseif l:l == "ζ"
        return ["z"]
    elseif l:l == "η"
        return ["h", "ee"]
    elseif l:l == "θ"
        return ["th"]
    elseif l:l == "ι"
        return ["i"]
    elseif l:l == "κ"
        return ["k", "c"]
    elseif l:l == "λ"
        return ["l"]
    elseif l:l == "μ"
        return ["m"]
    elseif l:l == "ν"
        return ["n"]
    elseif l:l == "ξ"
        return ["x"]
    elseif l:l == "ο"
        return ["o"]
    elseif l:l == "π"
        return ["p"]
    elseif l:l == "ρ"
        return ["r", "rh"]
    elseif l:l == "σ"
        return ["s"]
    elseif l:l == "τ"
        return ["t"]
    elseif l:l == "υ"
        return ["u", "y"]
    elseif l:l == "φ"
        return ["ph", "f"]
    elseif l:l == "χ"
        return ["kh", "ch"]
    elseif l:l == "ψ"
        return ["ps"]
    elseif l:l == "ω"
        return ["oo", "om"]
    elseif l:l == "ς"
        return ["ss", "se"]
    else
        echoerr "Error, unexpected letter '" . a:greek .  "'."
    endif
endfunction

function hellenika#setup()
    for l:letter in ["α", "β", "γ", "δ", "ε", "ζ", "η", "θ", "ι", "κ", "λ", "μ", "ν", "ξ", "ο", "π", "ρ", "σ", "ς", "τ", "υ", "φ", "χ", "ψ", "ω"]
        for l:translit in hellenika#LatinEquivalent(l:letter)
            execute "inoremap " . g:hellenikaKey . l:translit . " " . l:letter
            execute "inoremap " . g:hellenikaKey . toupper(l:translit) . " " . toupper(l:letter)
        endfor
    endfor
    execute "inoremap " . g:hellenikaKey . " <Nop>"
endfunction

