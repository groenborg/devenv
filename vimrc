execute pathogen#infect()
execute pathogen#helptags()
syntax on
filetype plugin indent on

"<NUL> is ctrl-space

set t_Co=256
set background=dark
colorscheme one
set cursorline
set guifont=Consolas:h14
set ls=2

set ai
set ts=2
set sw=2
set softtabstop=2
set expandtab
set ruler
set number
set incsearch
set colorcolumn=81,121
set splitright
set showmatch

set cpoptions+=$

set path=,.,*/,*/**,./**

"mark configs
highlight MarkWord1 ctermbg=3 ctermfg=8 cterm=bold
highlight MarkWord2 ctermbg=13 ctermfg=8 cterm=bold
highlight MarkWord3 ctermbg=1 ctermfg=8 cterm=bold
highlight MarkWord4 ctermbg=6 ctermfg=8 cterm=bold
highlight MarkWord5 ctermbg=9 ctermfg=8 cterm=bold
highlight MarkWord6 ctermbg=2 ctermfg=8 cterm=bold
highlight MarkWord7 ctermbg=5 ctermfg=8 cterm=bold
highlight MarkWord8 ctermbg=4 ctermfg=8 cterm=bold

" Don't make backups at all
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" use emacs-style tab completion when selecting files, etc
set wildmode=longest,list

" make tab completion for files/buffers act like bash
set wildmenu

if !empty($TMUX)
  :autocmd BufWritePost *.py silent ![[ `tmux display-message -p "\#{window_name}\#{window_panes}"` == "TDD2" ]] && tmux send-keys -t :.+ "run-tests" Enter
endif

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
