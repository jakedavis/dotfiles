filetype indent plugin on
syntax on

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kien/ctrlp.vim'
Plug 'mattn/calendar-vim'
Plug 'vmchale/just-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'fatih/vim-go'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
call plug#end()

let maplocalleader = "."
let mapleader = ","

let g:airline_theme='bubblegum'
let g:org_agenda_files=['~/dev/org/*.org']

"" Some basic configuration
set noswapfile
set expandtab
set incsearch
set linebreak
set laststatus=2
set number
set tw=99
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

autocmd BufRead,BufNewFile *.erb set filetype=eruby
autocmd BufRead,BufNewFile *.md set syntax=markdown

" Delete whitespace at end of line
autocmd BufWritePre * :%s/\s\+$//e

"" Autocorrections for save/quit misspellings
cabbrev W w
cabbrev Q q
cabbrev Wq wq
cabbrev WQ wq
cabbrev qw wq

" Linewrap Git commit messages to 70 columns
au FileType gitcommit set tw=70

"" Ctrl-{b,n} move between buffers
nmap <C-n> :bnext<CR>
nmap <C-b> :bprev<CR>

""" Various ignores
set wildignore+=*vendor*
set wildignore+=*venv*
set wildignore+=*target*
set wildignore+=*node_modules*

let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_fields = 1

noremap <leader>gd :GoDoc<CR>
noremap <leader>gb :GoBuild<CR>
noremap <leader>gt :GoTest<CR>
noremap <leader>gr :GoRun<CR>
noremap <leader>gp :GoPlay<CR>

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

set re=0
