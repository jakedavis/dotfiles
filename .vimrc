"" jakedavis ~/.vimrc
"" I use Powerline, Fugitive, Lucius, CtrlP, BufExplorer, and NERDtree

"" Some basic configuration
set autoindent
set expandtab
set incsearch
set linebreak
set laststatus=2
set number
set shiftwidth=2
set tabstop=2
set tw=79
set wrap

"" Pathogen.vim
execute pathogen#infect()
syntax on
filetype indent plugin on

"" Ruby syntax highlighting for erb files
autocmd BufRead,BufNewFile *.erb set filetype=ruby

"" Thank god this exists
cabbrev W w
cabbrev Q q
cabbrev Wq wq
cabbrev WQ wq

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

"" Colorschemes : Lucius, Kolor
colorscheme Lucius
LuciusBlackLowContrast

