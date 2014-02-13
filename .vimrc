"" jakedavis ~/.vimrc
"" I use Powerline, Fugitive, Lucius, CtrlP, BufExplorer, and NERDtree

"" Some basic configuration
set noswapfile
set expandtab
set incsearch
set linebreak
set laststatus=2
set number
set tw=79
set shiftwidth=2
set tabstop=2
set wrap
syntax on

"" Pathogen.vim
execute pathogen#infect()
filetype indent plugin on

"" Ruby syntax highlighting for erb files
"" Markdown syntax
autocmd BufRead,BufNewFile *.erb set filetype=ruby
autocmd BufRead,BufNewFile *.md set syntax=markdown

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
"" nmap ; :CtrlPBuffer<CR>

"" Colorschemes : Lucius, Kolor
colorscheme bw
" LuciusBlackLowContrast
