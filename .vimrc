syntax enable
syntax on
set shiftwidth=2
set tabstop=2
set expandtab
set number
set wrap
set linebreak
set tw=79
filetype indent plugin on

au Bufenter *.hs compiler ghc
filetype plugin on
let g:haddock_browser = "/usr/bin/google-chrome"

