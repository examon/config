"==============================================================================
"= SETTINGS ===================================================================
"==============================================================================

"------------------------------------------------------------------------------
"- Pathogen -------------------------------------------------------------------
"------------------------------------------------------------------------------

"enable pathogen
execute pathogen#infect()

"------------------------------------------------------------------------------
"- General --------------------------------------------------------------------
"------------------------------------------------------------------------------

"to get all the Vim-only options
set nocompatible

"enable filetype detection
filetype plugin indent on

"enable syntax highlighting
syntax enable

"set vim working dir same as dir of currently editing file
autocmd BufEnter * silent! lcd %:p:h

"backspaces behave like backspaces
set backspace=indent,eol,start

"good multi-file behaviors
set hidden

"don't wrap lines
set nowrap

"always show 5 lines before/after the cursor
set scrolloff=5

"update term title
set title

"turn off audio beeps
set visualbell

" don't beep
set noerrorbells

" disable visual bell
set t_vb=

"normal paste with shift+insert
set paste

"exit timeout from insert mode
set ttimeout ttimeoutlen=10

"stores undo state even when files are closed (in undodir)
set undofile

"show typed command in status bar
set showcmd

"turns of the Alt key bindings to the gui menu
set winaltkeys=no

"show line numbers
"set number

"Otherwise, contents of last visual will appear in X11 selection buffer - eek!
set clipboard=autoselectml

"number of colors
set t_Co=256

"charset
set fencs=ucs-bom,utf-8,default,latin2

"enable mouse
set mouse=a

"Right-click on selection should bring up a menu
set mousemodel=popup_setpos

"redraw only when we need to.
set lazyredraw

"This makes sure that shell scripts are highlighted
"as bash scripts and not sh scripts.
let g:is_posix = 1

"Tries to avoid those annoying "hit enter to continue" messages
"if it still doesn't help with certain commands, add a second <cr>
"at the end of the map command.
set shortmess=a

"none of these should be word dividers, so make them not be
set iskeyword+=_,$,@,%,#

"Number of screen lines to use for the command-line
set cmdheight=1


if v:version >= 704
    " The new Vim regex engine is currently slooooow as hell which makes syntax
    " highlighting slow, which introduces typing latency.
    " Consider removing this in the future when the new regex engine becomes
    " faster.
    set regexpengine=1
endif

" Unicode support (taken from http://vim.wikia.com/wiki/Working_with_Unicode)
if has("multi_byte")
    if &termencoding == ""
        let &termencoding = &encoding
    endif
    set encoding=utf-8
    setglobal fileencoding=utf-8
    set fileencodings=ucs-bom,utf-8,latin1
endif

augroup vimrc
    " Automatically delete trailing DOS-returns and whitespace on file open and
    " write.
    autocmd BufRead,BufWritePre,FileWritePre * silent! %s/[\r \t]\+$//
augroup END



"------------------------------------------------------------------------------
"- Backup & Swap --------------------------------------------------------------
"------------------------------------------------------------------------------

"no backup file
set nobackup

"swap file on
set swapfile

"------------------------------------------------------------------------------
"- Indentation & Formatting ---------------------------------------------------
"------------------------------------------------------------------------------

"print tab as spaces
set expandtab

"tab length
set tabstop=2

"number of spaces to use for autoindenting
set shiftwidth=2

"use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" set show matching parenthesis
set showmatch

set softtabstop=2

"makes indenting a multiple of shiftwidth
set shiftround

"C indenting
set cindent

"smart autoindent on new line
set smartindent

"always autoindent
set autoindent

"show special characters like tabs, trailing spaces, etc.
set list listchars=tab:»\ \,trail:·,extends:»,precedes:«,nbsp:×

"------------------------------------------------------------------------------
"- History --------------------------------------------------------------------
"------------------------------------------------------------------------------

"remember more commands and search history
set history=1000

"levels of undo
set undolevels=1000

"------------------------------------------------------------------------------
"- Visual Mode  ---------------------------------------------------------------
"------------------------------------------------------------------------------

"color when selecting text
highlight Visual ctermfg=11 ctermbg=0 cterm=none

"------------------------------------------------------------------------------
"- Statusline -----------------------------------------------------------------
"------------------------------------------------------------------------------

"shows the current mode
set showmode

"show cursor position in the corner
set ruler

"don't show the mode ("-- INSERT --") at the bottom
set noshowmode

"always show a status line at the bottom
set laststatus=2

"statusline info
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

"statusline color - active window
highlight StatusLine ctermfg=7 ctermbg=0 cterm=none
"statusline color - inactive window
highlight StatusLineNC ctermfg=4 ctermbg=0 cterm=none

"------------------------------------------------------------------------------
"- Folding --------------------------------------------------------------------
"------------------------------------------------------------------------------

set foldenable
set foldmethod=indent
" the number of columns to use for folding display at the left
set foldcolumn=0
set foldlevelstart=10

"color for folded text
highlight Folded ctermbg=0 ctermfg=1
highlight FoldColumn ctermbg=0 ctermfg=1

"------------------------------------------------------------------------------
"- Searching ------------------------------------------------------------------
"------------------------------------------------------------------------------

"search results colors
highlight Search ctermfg=0 ctermbg=1 cterm=none

"case-insensitive searching
set ignorecase

"unless there's a capital letter there
set smartcase

"highlight search matches
set hlsearch

"highlight search matches as I type
set incsearch

"------------------------------------------------------------------------------
"- Autocompletion -------------------------------------------------------------
"------------------------------------------------------------------------------

"show autocompletion window
set wildmenu

"completion mode
set wildmode=longest:full,full

"autocompletion menu colors
highlight Pmenu ctermfg=7 ctermbg=0
highlight PmenuSel ctermfg=0 ctermbg=7

"------------------------------------------------------------------------------
"- Cursor Line ----------------------------------------------------------------
"------------------------------------------------------------------------------

set cursorline
hi CursorLine   cterm=NONE ctermbg=0 ctermfg=None

"color when in insert mode
autocmd InsertEnter * highlight  CursorLine ctermbg=0 ctermfg=None
"color out of insert mode
autocmd InsertLeave * highlight  CursorLine ctermbg=0 ctermfg=None

"------------------------------------------------------------------------------
"- Vertical Ruler -------------------------------------------------------------
"------------------------------------------------------------------------------

"highlight column number 80
if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

"highlight column color
highlight ColorColumn ctermbg=0


"==============================================================================
"= KEYBINDS ===================================================================
"==============================================================================

"------------------------------------------------------------------------------
"- Root -----------------------------------------------------------------------
"------------------------------------------------------------------------------

":WW will ask for sudo when writing to files without write permissions
command WW w !sudo tee % > /dev/null


"------------------------------------------------------------------------------
"- Searching ------------------------------------------------------------------
"------------------------------------------------------------------------------

"clear search buffer
nmap <silent> ,/ :nohlsearch<CR>

"------------------------------------------------------------------------------
"- Spell Checking -------------------------------------------------------------
"------------------------------------------------------------------------------
"move cursor on the word you want to correct and press z=

"enable english spellcheck
nmap <F6> :set spell spelllang=en_us <CR>
"disable spellcheck
nmap <F7> :set nospell <CR>

"underline spelling errors
highlight clear SpellBad
highlight SpellBad cterm=underline,bold

"------------------------------------------------------------------------------
"- File Navigation ------------------------------------------------------------
"------------------------------------------------------------------------------

"remap home row
noremap ; l
noremap l k
noremap k j
noremap j h

"------------------------------------------------------------------------------
"- Window Navigation & Management ---------------------------------------------
"------------------------------------------------------------------------------

"move to top window
nnoremap <silent> wl :wincmd k<CR>
"move to bottom window
nnoremap <silent> wk :wincmd j<CR>
"move to left window
nnoremap <silent> wj :wincmd h<CR>
"move to right window
nnoremap <silent> w; :wincmd l<CR>

"split buffer vertically
nnoremap wv :vs<cr>
"split buffer horizontally
nnoremap wh :sp<cr>

"close current window
nnoremap wc :hide<cr>
"maximize current window
nnoremap wm <C-W>_
"normalize all windows
nnoremap wn <C-W>=

"vertical split line color
highlight VertSplit ctermfg=0 ctermbg=0 cterm=none

"------------------------------------------------------------------------------
"- Buffer Management ----------------------------------------------------------
"------------------------------------------------------------------------------

"resize current buffer by +/- 5 lines
nnoremap Tj :vertical resize -10<cr>
nnoremap T; :vertical resize +10<cr>
nnoremap Tl :resize -10<cr>
nnoremap Tk :resize +10<cr>

"switch to previous buffer
nnoremap tj :bp<cr>
"switch to next buffer
nnoremap t; :bn<cr>


"==============================================================================
"= PLUGINS ====================================================================
"==============================================================================

"------------------------------------------------------------------------------
"- Tagbar ---------------------------------------------------------------------
"------------------------------------------------------------------------------

"looks for tags in parents directories up to root
set tags=tags;/

"open Tagbar
nnoremap to :TagbarToggle<cr>
"close Tagbar
nnoremap tp :TagbarClose<cr>

"goto symbol definition
nnoremap ti <C-]>
"return back from symbol definition
nnoremap tu <C-t>


"------------------------------------------------------------------------------
"- NERDTree -------------------------------------------------------------------
"------------------------------------------------------------------------------
" - doc: .vim/doc/NERD_tree.txt
" - commands:
"   - shift-?: show help

"open NERDTree
nnoremap no :NERDTreeToggle<cr>
"close NERDTree
nnoremap np :NERDTreeClose<cr>


"------------------------------------------------------------------------------
"- BufExplorer ----------------------------------------------------------------
"------------------------------------------------------------------------------
" - doc: .vim/doc/bufexplorer.txt
" - shift + i, show hidden files

"open BufExplorer
nnoremap bo :BufExplorer<cr>

"------------------------------------------------------------------------------
"- bufkill --------------------------------------------------------------------
"------------------------------------------------------------------------------

"unload buffer
nnoremap wer :BD<cr>

"------------------------------------------------------------------------------
"- bufferline -----------------------------------------------------------------
"------------------------------------------------------------------------------
" - doc: .vim/doc/bufferline.txt

"don't show buffer numbers
let g:bufferline_show_bufnr = 0

"------------------------------------------------------------------------------
"- ctrlp ----------------------------------------------------------------------
"------------------------------------------------------------------------------
" - doc: .vim/doc/ctrlp.txt
" - commands:
"   - ctrl-p: opening command (gets you inside ctrlp)

"open file in vertical split in current window when pressing ctrl-y
let g:ctrlp_open_new_file = 'vr'

"show hidden files
let g:ctrlp_show_hidden = 1

"searcsin files, buffers and MRU files at the same timg
let g:ctrlp_extensions = ['mixed']

"keybinds
let g:ctrlp_prompt_mappings = {
    \ 'PrtBS()':              ['<bs>', '<c-]>'],
    \ 'PrtDelete()':          ['<del>'],
    \ 'PrtDeleteWord()':      ['<c-w>'],
    \ 'PrtClear()':           ['<c-u>'],
    \ 'PrtSelectMove("j")':   ['<c-k>', '<down>'],
    \ 'PrtSelectMove("k")':   ['<c-l>', '<up>'],
    \ 'PrtSelectMove("t")':   ['<Home>', '<kHome>'],
    \ 'PrtSelectMove("b")':   ['<End>', '<kEnd>'],
    \ 'PrtSelectMove("u")':   ['<PageUp>', '<kPageUp>'],
    \ 'PrtSelectMove("d")':   ['<PageDown>', '<kPageDown>'],
    \ 'PrtHistory(-1)':       ['<c-n>'],
    \ 'PrtHistory(1)':        ['<c-p>'],
    \ 'AcceptSelection("e")': ['<cr>', '<2-LeftMouse>'],
    \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
    \ 'AcceptSelection("t")': ['<c-t>'],
    \ 'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],
    \ 'ToggleFocus()':        ['<s-tab>'],
    \ 'ToggleRegex()':        ['<c-r>'],
    \ 'ToggleByFname()':      ['<c-d>'],
    \ 'ToggleType(1)':        ['<c-f>', '<c-up>'],
    \ 'ToggleType(-1)':       ['<c-b>', '<c-down>'],
    \ 'PrtExpandDir()':       ['<tab>'],
    \ 'PrtInsert("c")':       ['<MiddleMouse>', '<insert>'],
    \ 'PrtInsert()':          ['<c-\>'],
    \ 'PrtCurStart()':        ['<c-a>'],
    \ 'PrtCurEnd()':          ['<c-e>'],
    \ 'PrtCurLeft()':         ['<c-j>', '<left>', '<c-^>'],
    \ 'PrtCurRight()':        ['<c-;>', '<right>'],
    \ 'PrtClearCache()':      ['<F5>'],
    \ 'PrtDeleteEnt()': ['<F7>'],
    \ 'CreateNewFile()': ['<c-y>'],
    \ 'MarkToOpen()': ['<c-z>'],
    \ 'OpenMulti()': ['<c-o>'],
    \ 'PrtExit()': ['<esc>', '<c-c>', '<c-g>'],
    \ }

"------------------------------------------------------------------------------
"- YouCompleteMe --------------------------------------------------------------
"------------------------------------------------------------------------------
"https://github.com/Valloric/YouCompleteMe

"min number of character to start completion
let g:ycm_min_num_of_chars_for_completion = 2

"complete language keywords
"let g:ycm_seed_identifiers_with_syntax = 1

"key to invoke completion
let g:ycm_key_invoke_completion = '<C-n>'

"close preview window when not in insert mode
let g:ycm_autoclose_preview_window_after_insertion = 1

"global ycm config
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"read identifiers from tags files
"need: ctags -R --fields=+l
"let g:ycm_collect_identifiers_from_tags_files = 1

"complete inside comments
"let g:ycm_complete_in_comments = 0

"let g:ycm_register_as_syntastic_checker = 0

"------------------------------------------------------------------------------
"- MatchTagAlways -------------------------------------------------------------
"------------------------------------------------------------------------------

"setup custom color highlight for match
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matchtag_color = 0
highlight MatchTag ctermfg=0 ctermbg=7
