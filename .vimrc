"Auto Reload vimrc
autocmd! bufwritepost .vimrc source %

set mouse=a
set pastetoggle=<F2>
set clipboard=unnamed

"Bind ctrl+n no highlight
"Removes highlight of last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

"Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

"Quick quit command
noremap <Leader>e :quit<CR>  "Quit current Window
noremap <Leader>E :qa!<CR>   "Quit all windows

"Easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"Bind Ctrl+<movement> keys to move around windows
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

map <Leader>s :sort<CR>

vnoremap < <gv " better indentation
vnoremap > >gv " better indentation
  
set t_Co=256
color distinguished

"Syntax Highlighting
filetype off
filetype plugin indent on
syntax on

"Showing line numbers and length
set number "Show line numbers
set tw=79  "Width of document
set nowrap "Do not automatically wrap on load
set fo-=t "don't automatically wrap text
set colorcolumn=80
highlight ColorColumn ctermbg=233

set history=700
set undolevels=700

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

set hlsearch
set incsearch
set ignorecase
set smartcase

set nobackup
set nowritebackup
set noswapfile

"Now you can install any plugin into .vim/bundle/plugin_name/ folder
call pathogen#infect()

"Settings for powerline
set laststatus=2

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)

"let g:pymode_rope = 1

" Documentation

"let g:pymode_doc = 1
"let g:pymode_doc_key = 'K'

"Linting

"let g:pymode_lint = 1
"let g:pymode_lint_checker = "pyflakes,pep8"

" Auto check on save
"let g:pymode_lint_write = 1

" Support virtualenv
"let g:pymode_virtualenv = 1

" Enable breakpoints plugin
"let g:pymode_breakpoint = 1
"let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
"let g:pymode_syntax = 1
"let g:pymode_syntax_all = 1
"let g:pymode_syntax_indent_errors = g:pymode_syntax_all
"let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
"let g:pymode_folding = 0
"Python Folding
"set nofoldenable

autocmd VimEnter * NERDTree
vert resize -5
autocmd VimEnter * wincmd p
split
autocmd VimEnter * wincmd w
autocmd VimEnter * ConqueTerm bash
resize +10
autocmd VimEnter * wincmd p

