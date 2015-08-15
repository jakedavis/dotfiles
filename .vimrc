" jakedavis ~/.vimrc
"" I use Powerline, Fugitive, Lucius, CtrlP, BufExplorer, and NERDtree

"" Pathogen.vim
execute pathogen#infect()
filetype indent plugin on
syntax on

"" Color scheme
set background=dark
colorscheme solarized
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
" colorscheme hybrid
" colorscheme LuciusBlackLowContrast
" colorscheme bw

"" Not sure entirely, but for Paredit makes , the leader.
let mapleader = ","

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
set backspace=indent,eol,start
set wmh=0 "" Minimum window height to 0 lines

"" Pane manipulation
set splitbelow
set splitright
noremap :wincmd <C-w>
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

"" Ruby syntax highlighting for erb files
"" Markdown syntax
autocmd BufRead,BufNewFile *.erb set filetype=ruby
autocmd BufRead,BufNewFile *.md set syntax=markdown

" Delete whitespace at EOL on :w for clojure/ruby
autocmd BufWritePre *.clj :%s/\s\+$//e
autocmd BufWritePre *.rb :%s/\s\+$//e

"" Autocorrections for save/quit misspellings
cabbrev W w
cabbrev Q q
cabbrev Wq wq
cabbrev WQ wq

" Linewrap Git commit messages to 72 columns
au FileType gitcommit set tw=72

" Emacs-style minibuffer movement
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

"" Split lines
nnoremap S i<cr><esc>^mwgk:silent! s/\v +$//<cr>:noh<cr>`w

"" Ctrl-b/n move between buffers
nmap <C-n> :bnext<CR>
nmap <C-b> :bprev<CR>

""""" RUBY """""
set wildignore+=/Users/jake/dev/simple/cookbooks/*/cookbooks/*
set wildignore+=/Users/jake/dev/simple/cookbooks/*/vendor/*
set wildignore+=/Users/jake/dev/simple/cookbooks/*/bin/*
set wildignore+=/Users/jake/dev/simple/cookbooks/*/tmp/*
set wildignore+=venv

""""" CLOJURE """""
set wildignore+=target

" Aligns multiline text (vs. aligning with the quote)
let g:clojure_align_multiline_strings = 1

" Paredit bindings stolen from @sjl
au FileType clojure noremap <buffer> () :<c-u>call PareditWrap("(", ")")<cr>
au FileType clojure noremap <buffer> )( :<c-u>call PareditSplice()<cr>
au FileType clojure noremap <buffer> (( :<c-u>call PareditMoveLeft()<cr>
au FileType clojure noremap <buffer> )) :<c-u>call PareditMoveRight()<cr>
au FileType clojure noremap <buffer> (j :<c-u>call PareditJoin()<cr>
au FileType clojure noremap <buffer> (s :<c-u>call PareditSplit()<cr>
au FileType clojure noremap <buffer> [ :<c-u>call PareditSmartJumpOpening(0)<cr>
au FileType clojure noremap <buffer> ] :<c-u>call PareditSmartJumpClosing(0)<cr>

"" Syntax checking
let g:syntastic_python_checkers   = ['flake8']
let g:syntastic_java_checkers     = []
let g:syntastic_ruby_checkers     = ['mri', 'rubocop']
let g:syntastic_ruby_rubocop_exec = '/Users/jake/.rubies/ruby-2.1.1/bin/ruby /Users/jake/.gem/ruby/2.1.1/bin/rubocop'

""""" VARIOUS HELPERS """""

"" Show cursorline in current window
augroup cline
  au!
augroup END
 
augroup cline
  au!
  au WinLeave,InsertEnter * set nocursorline
  au WinEnter,InsertLeave * set cursorline
augroup END

"" Show trailing whitespace
augroup trailing
  au!
augroup END

augroup trailing
  au!
  au InsertEnter * :set listchars-=trail:⌴
  au InsertLeave * :set listchars+=trail:⌴
augroup END
