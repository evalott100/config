color file
hi clear
if version > 580
hi clear
if exists("syntax_on")
syntax reset
endif
endif
let g:colors_name="customized"

"hi Normal       ctermfg=15 ctermbg=0
hi CursorLine   ctermbg=8 cterm=none
hi CursorLineNr ctermfg=7 ctermbg=8	cterm=none
hi Boolean         ctermfg=13
hi Character       ctermfg=13
hi Number          ctermfg=13
hi String          ctermfg=13
hi Conditional     ctermfg=4           cterm=none
hi Constant        ctermfg=13           cterm=none
hi Cursor          ctermfg=0  ctermbg=13
hi Debug           ctermfg=13               cterm=none
hi Define          ctermfg=13
hi Delimiter       ctermfg=4
hi DiffAdd                     ctermbg=44
hi DiffChange      ctermfg=13 ctermbg=4313
hi DiffDelete      ctermfg=13 ctermbg=53
hi DiffText		ctermbg=13 cterm=none
hi Directory       ctermfg=4	cterm=none
hi Error           ctermfg=9 ctermbg=none cterm=none
hi ErrorMsg        ctermfg=13 ctermbg=0    cterm=none
hi Exception       ctermfg=4               cterm=none
hi Float           ctermfg=13
hi FoldColumn      ctermfg=4  ctermbg=8
hi Folded          ctermfg=4  ctermbg=8
hi Function	ctermfg=13
hi Identifier	ctermfg=13               cterm=none
hi Ignore	ctermfg=4	ctermbg=15
hi IncSearch       ctermfg=none	ctermbg=8	cterm=none
hi keyword         ctermfg=4               cterm=none
hi Label           ctermfg=4               cterm=none
hi Macro           ctermfg=4
hi SpecialKey      ctermfg=4
hi MatchParen      ctermfg=4  ctermbg=none cterm=none
hi ModeMsg         ctermfg=13
hi MoreMsg         ctermfg=13
hi Operator        ctermfg=13

" complete menu
hi Pmenu           ctermfg=4  ctermbg=8
hi PmenuSel        ctermfg=0  ctermbg=4
hi PmenuSbar                  ctermbg=8
hi PmenuThumb      ctermfg=4
hi PreCondit       ctermfg=4               cterm=none
hi PreProc         ctermfg=4
hi Question        ctermfg=4
hi Repeat          ctermfg=13               cterm=none
hi Search          ctermfg=none   ctermbg=8   cterm=none

hi SignColumn      ctermfg=4 ctermbg=none
hi SpecialChar     ctermfg=13               cterm=none
hi SpecialComment  ctermfg=7               cterm=none
hi Special         ctermfg=13
hi SpellBad        ctermfg=9  ctermbg=none cterm=bold
hi SpellCap        ctermfg=9 ctermbg=none cterm=bold
hi SpellLocal      ctermbg=none
hi SpellRare  ctermfg=none ctermbg=none  cterm=reverse
hi Statement       ctermfg=4               cterm=none
hi StatusLine      ctermfg=15 ctermbg=8 cterm=none
hi StatusLineNC    ctermfg=0 ctermbg=8 cterm=none
hi StorageClass    ctermfg=13
hi Structure       ctermfg=4
hi Tag             ctermfg=13

hi Title           ctermfg=4
hi Todo            ctermfg=7 ctermbg=none   cterm=none
hi Typedef         ctermfg=4
hi Type            ctermfg=4                cterm=none
hi Underlined      ctermfg=444               cterm=none
hi VertSplit       ctermfg=8 ctermbg=8   cterm=none
hi VisualNOS                   ctermbg=8
hi Visual                      ctermbg=8
hi WarningMsg      ctermfg=15 ctermbg=438   cterm=none
hi WildMenu        ctermfg=8  ctermbg=4
hi Comment         ctermfg=7
hi CursorColumn     ctermbg=8
hi LineNr          ctermfg=7 ctermbg=none cterm=none
hi NonText         ctermfg=8 ctermbg=8
hi SpecialKey      ctermfg=0 ctermbg=4
