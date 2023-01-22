set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

Plugin 'Stautob/vim-fish'
" Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

set number
set relativenumber
set autoindent
set smartindent
syntax on
set mouse=a
set backup
set backupdir=/home/roshan/.vim/backups
set hlsearch
set ignorecase
set wrap!
set listchars=eol:$,tab:==>,trail:~,extends:>,precedes:<,space:-
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set termguicolors
set splitright
" enable folding
set foldmethod=indent
set foldlevel=99
" folding with spacebar
nnoremap <space> za
let g:pymode_rope = 0
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = "<C-j>"
let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_assignment_command = "<leader>a"
let g:jedi#usages_command = "<leader>u"

" call plug#begin('.config/vim/plugged')
" 
" " Make sure you use single quotes for comment
" 
" Plug 'Stautob/vim-fish'
" 
" " Add plugins to &runtimepath
" call plug#end()

highlight LineNr guifg=DarkGrey guifg=DarkGrey
highlight MatchParen guifg=Black guibg=#404040
highlight Search guibg=Grey guifg=Black
highlight Visual guibg=#4E064C
highlight Comment guifg=Green
highlight Boolean guifg=Orange
highlight Number guifg=#875fff
highlight Float guifg=#875fff
highlight String guifg=#87d7ff
highlight Character guifg=#87d7ff
highlight Function cterm=bold guifg=#992244
highlight Conditional guifg=#9933ff
highlight Statement guifg=#9933ff
highlight Repeat guifg=#9933ff
highlight Exception guifg=Red
highlight Statement guifg=#0ccc66
highlight Macro guifg=#999900
highlight pythonComment guifg =Green
highlight pythonExceptions guifg=#8B0202
highlight pythonString guifg=#87d7ff 
highlight pythonQuotes guifg=#994c00
highlight pythonOperator guifg= Orange
highlight pythonNumber guifg=#875fff
highlight pythonBuiltin guifg=#0066cc
highlight pythonConditional guifg=#9933ff
highlight pythonStatement guifg=#9933ff
highlight pythonRepeat guifg=#9933ff
highlight pythonFunction cterm=bold guifg=#992244
highlight pythonEscape guifg= Orange
highlight DiffAdd guibg=DarkGreen
highlight DiffDelete guibg=#830707 guifg=#830707
highlight DiffChange guibg=#3d3d3d
highlight DiffText guibg=#bd4805
highlight Pmenu guibg=#090033 guifg=Grey 
highlight PmenuSel guifg=Black

" noremap j h
" noremap k j
" noremap l k
" noremap ; l
inoremap '' ''<left>
inoremap "" ""<left>
inoremap () ()<left>
inoremap ()( ()
inoremap [] []<left>
inoremap [][ []
inoremap {} {}<left>
inoremap {}{ {}
inoremap {<Return> {}<Left><Return><Esc>O
inoremap ^^ <Esc>A;<Esc>o
inoremap ^& <Esc>A;<Esc>
nnoremap ^& A;<Esc>
noremap ii <Esc>
noremap! ii <Esc>
nunmap ii
"split navigations
nnoremap <C-h> <C-W><C-h>
nnoremap <C-j> <C-W><C-j>
nnoremap <C-k> <C-W><C-k>
nnoremap <C-l> <C-W><C-l>

"fixes mouse in alacritty
set ttymouse=sgr
