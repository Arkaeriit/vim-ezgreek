# Vim Hellenika

Easily write Greek letters in Vim.

When writing text related to science or maths, one often find themself to need Greek letters. But this is not trivial to do with a keyboard having only a Latin alphabet. This plugin let you do so by pressing a key binding followed by a transliteration of the Greek letter.

## How to use it

In insert mode, press the plugin's keybinding (default to `<C-G>`), then press the transliteration from the following table. If there is multiple transliterations such as for the letters "κ" or "ρ", choose whichever you want. If you type the Latin letter in uppercase, the Greek letter will be in uppercase as well. `<C-G>s` will be transformed into "σ" while `<C-G>S` will be transformed into "Σ". If there is multiple letters in the transliteration, you have to type them in the same case. `<C-G>CH` will become "Χ", but `<C-G>Ch` will become "Κh".

|Greek letter|Transliteration|
|------------|---------------|
|α           |a              |
|β           |b              |
|γ           |g              |
|δ           |d              |
|ε           |e              |
|ζ           |z              |
|η           |h, ee          |
|θ           |th             |
|ι           |i              |
|κ           |k, c           |
|λ           |l              |
|μ           |m              |
|ν           |n              |
|ξ           |x              |
|ο           |o              |
|π           |p              |
|ρ           |r, rh          |
|σ           |s              |
|ς           |ss, se         |
|τ           |t              |
|υ           |u, y           |
|φ           |ph, f          |
|χ           |kh, ch         |
|ψ           |ps             |
|ω           |oo, om         |

## Changing the plugin's keybinding

If you want to change the plugin's keybinding to be something other than `<C-G>`, you can do so by specifying the variable `g:hellenikaKey`.

If you want to specify it using `<>` notation, you must expand the notation for the plugin to work. For example, if you want to use `<C-P>`, you must put in your vimrc `let g:hellenikaKey = "\<C-P>"`.

## Installation

To install this plugin, simply put this repository's directory into your plugin directory. For example, if you are using Pathogen as a plugin manager, put in in `bundle`.

