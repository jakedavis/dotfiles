set shiftwidth=2
set tabstop=2
set expandtab
set number
set wrap
set linebreak
set tw=79
set laststatus=2

"" Pathogen.vim
execute pathogen#infect()
syntax on
filetype indent plugin on

"" Ruby syntax highlighting for erb files
autocmd BufNewFile *.erb set syntax=ruby

