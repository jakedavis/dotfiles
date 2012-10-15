syntax enable
syntax on
set background=dark
set shiftwidth=4
set tabstop=4
set expandtab
set number
set wrap
set linebreak
set tw=79
filetype indent plugin on

au Bufenter *.hs compiler ghc
filetype plugin on
let g:haddock_browser = "/usr/bin/google-chrome"

