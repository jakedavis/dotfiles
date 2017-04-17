"" Pathogen.vim
execute pathogen#infect()
filetype indent plugin on
syntax on

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

" Aligns multiline text (vs. aligning with the quote)
let g:clojure_align_multiline_strings = 1

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
noremap <leader>gd :GoDoc<CR>
noremap <leader>gb :GoBuild<CR>
noremap <leader>gt :GoTest<CR>
noremap <leader>gr :GoRun<CR>
noremap <leader>gp :GoPlay<CR>

"" Syntax checking
let g:syntastic_go_checkers       = []
let g:syntastic_python_checkers   = []
let g:syntastic_java_checkers     = []
let g:syntastic_ruby_checkers     = []
let g:syntastic_ruby_rubocop_exec = ''

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
