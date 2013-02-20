"" jakedavis ~/.vimrc
"" I use Powerline, Fugitive, Lucius, CtrlP, BufExplorer, and NERDtree

"" Some basic configuration
set shiftwidth=2
set tabstop=2
set expandtab
set number
set wrap
set linebreak
set tw=79
set laststatus=2
set incsearch

"" Pathogen.vim
execute pathogen#infect()
syntax on
filetype indent plugin on

"" Ruby syntax highlighting for erb files
autocmd BufNewFile *.erb set syntax=ruby

"" Emacs-style minibuffer movement
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <M-b>  <S-Left>
cnoremap <M-f>  <S-Right>
cnoremap <M-d>  <S-right><Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
cnoremap <C-g>  <C-c>

"" So legit
nmap <C-n> :bnext<CR>
nmap <C-b> :bprev<CR>
nmap ; :CtrlPBuffer<CR>

"" Lucius
colorscheme lucius
LuciusBlackLowContrast

