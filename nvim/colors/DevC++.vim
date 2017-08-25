" Vim color file
" Maintainer:   Xi Chen <hypernewbie@gmail.com>
" Last Change:  22. december 2005.
" URL:          http://www.acidplanet.com/hypernewbie
" The theme I always use from DEV-C++
" Its the classic theme modified a little, carried
" over a little from Kate.
" Merry Christmas!

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="DevC++"


hi Normal          guifg=#F8F8F2 guibg=#1B1D1E
hi Comment         guifg=#7E8E91
hi CursorLine                    guibg=#293739
hi CursorLineNr    guifg=#FD971F               gui=none
hi CursorColumn                  guibg=#293739
hi ColorColumn                   guibg=#232526
hi LineNr          guifg=#465457 guibg=#232526
hi NonText         guifg=#465457
hi SpecialKey      guifg=#465457

hi Keyword    guifg=gray30 gui=none
hi Function   guifg=gray30
hi Identifier guifg=gray30
hi Title      guifg=gray30
hi Operator   guifg=gray30


hi Comment    guifg=gray30 gui=none
hi Constant   guifg=gray30   gui=none
hi Identifier guifg=gray30 gui=none
hi Statement  guifg=gray30   gui=none
hi PreProc    guifg=gray30   gui=none
hi Type       guifg=gray30 gui=none
hi Special    guifg=gray30   gui=none
hi String     guifg=gray50   gui=none
hi Number     guifg=gray30   gui=none
hi Boolean    guifg=gray30  gui=none
hi Gutte      guifg=gray30   gui=none
hi Todo       guifg=Green  guibg=bg  gui=bold
hi Visual     guifg=Black  guibg=White

