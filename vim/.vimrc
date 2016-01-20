set shell=/bin/bash
set noswapfile
set nobackup

" Pathogen
execute pathogen#infect()

" UI
set number
set guifont=Monaco:h13
set background=dark
colorscheme getafe

" Presets
let mapleader = ","

set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set autoindent
set smartindent
set nofoldenable " disable folding
set wildignore+=public/uploads,public/system,tmp,gulp,node_modules

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
filetype on
filetype indent on
filetype plugin on
syntax on

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Disable arrow keys
nmap <up> <nop>
nmap <down> <nop>
nmap <left> <nop>
nmap <right> <nop>
vmap <up> <nop>
vmap <down> <nop>
vmap <left> <nop>
vmap <right> <nop>

" Break on -_ characters
set iskeyword-=_
set iskeyword+=-

nnoremap ; :

" Macros
map <leader>s :split<CR>
map <leader>v :vsplit<CR>
map <leader>d :bufdo bd<CR>

map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

map <leader>n :NERDTree<CR>
map <leader>c :NERDTreeClose<CR>

map <leader>f :CommandTFlush<CR>

" Mini Buff Explorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapCTabSwitchBufs = 1

map <leader>w :bn<CR>
map <leader>q :bp<CR>

" Command T
let g:CommandTMaxFiles=50000

autocmd BufNewFile,BufRead *.go setlocal filetype=go noexpandtab shiftwidth=8 tabstop=8 ts=8 sts=8
