" Return the lowercase greek letter that is closer to the input latin letter
" Return 0 is there is no good match
function GreekEquivalent(latin)
    let l:l = tolower(a:latin)
    if l:l == "a"
        return "α"
    elseif l:l == "b"
        return "β"
    elseif l:l == "g"
        return "γ"
    elseif l:l == "d"
        return "δ"
    elseif l:l == "e"
        return "ε"
    elseif l:l == "z"
        return "ζ"
    elseif l:l == "y"
        return "η"
    elseif l:l == "h"
        return "θ"
    elseif l:l == "i"
        return "ι"
    elseif l:l == "k"
        return "κ"
    elseif l:l == "l"
        return "λ"
    elseif l:l == "m"
        return "μ"
    elseif l:l == "n"
        return "ν"
    elseif l:l == "x"
        return "ξ"
    elseif l:l == "o"
        return "ο"
    elseif l:l == "p"
        return "π"
    elseif l:l == "r"
        return "ρ"
    elseif l:l == "s"
        return "σ"
    elseif l:l == "t"
        return "τ"
    elseif l:l == "u"
        return "υ"
    elseif l:l == "s"
        return "σ"
    elseif l:l == "f"
        return "φ"
    elseif l:l == "c"
        return "χ"
    elseif l:l == "g"
        return "ψ"
    elseif l:l == "w"
        return "ω"
    else
        return "nope"
    endif
endfunction

let s:key="<C-G>"

for s:letter in ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    if GreekEquivalent(s:letter) == "nope"
    else
        execute "inoremap " . s:key . s:letter . " " . GreekEquivalent(s:letter)
        execute "inoremap " . s:key . toupper(s:letter) . " " . toupper(GreekEquivalent(s:letter))
    endif
endfor
