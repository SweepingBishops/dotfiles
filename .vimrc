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
set listchars=eol:$,tab:-->,trail:~,extends:>,precedes:<,space:%
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

highlight LineNr term=bold ctermfg=DarkGrey guifg=DarkGrey
highlight Search ctermbg=Grey ctermfg=Black
highlight Visual ctermbg=99
highlight pythonComment ctermfg =Green
highlight pythonExceptions ctermfg =124
highlight pythonString ctermfg =117
highlight pythonNumber ctermfg =99

noremap j h
noremap k j
noremap l k
noremap ; l
inoremap '' ''<left>
inoremap "" ""<left>
inoremap () ()<left>
inoremap [] []<left>
inoremap {} {}<left>
noremap jj <Esc>
noremap! jj <Esc>
autocmd VimEnter * nunmap jj

"fixes mouse in alacritty
set ttymouse=sgr
