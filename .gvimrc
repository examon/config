" disable visual bell (flashes)
set visualbell
set t_vb=

" Solarized options
let g:solarized_italic=0    "default value is 1
let g:solarized_contrast="high"    "default value is normal
let g:solarized_visibility="high"    "default value is normal
let g:solarized_diffmode="high"    "default value is normal
let g:solarized_hitrail=1    "default value is 0
syntax enable
set background=dark
colorscheme solarized

"colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1

"colorscheme badwolf

"function signature (arguments, ...) color
highlight TagbarSignature guifg=Grey50 guibg=bg

"color for folded text
highlight Folded gui=bold guibg=bg guifg=#d33682
highlight FoldColumn gui=bold guibg=bg guifg=#004152

""" shift insert paste
map <silent> <S-Insert> "+p
imap <silent> <S-Insert> <Esc>"+pa

"""font
"set guifont=Monospace\ 11
set guifont=Terminus\ 13

""" GUI
function! ToggleGUICruft()
  if &guioptions=='i'
    exec('set guioptions=imT')
  else
    exec('set guioptions=i')
  endif
endfunction

" toggle gui with F11
map gui <esc>:call ToggleGUICruft()<cr>

" by default, hide gui menus
set guioptions=i
