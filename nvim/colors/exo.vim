" Vim color file
"

hi clear

let g:colors_name="exo"

   hi Normal          guifg=white guibg=black
   hi Comment         guifg=brown
   hi CursorLine                    guibg=#3E3D32
   hi CursorLineNr    guifg=#f8f8f2               gui=none
   hi CursorColumn                  guibg=#3E3D32
   hi ColorColumn                   guibg=#3B3A32
   hi LineNr          guifg=#f8f8f2 guibg=#262822
   hi NonText         guifg=#75715e
   hi SpecialKey      guifg=#75715e

" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
