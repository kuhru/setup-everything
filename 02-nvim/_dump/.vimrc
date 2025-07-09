" Enable Line Numbers
set number
set relativenumber

" Search improvements
set incsearch
set hlsearch
set ignorecase
set smartcase

" Indentation settings
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" Enable Mouse Support
set mouse=a

" Enable Persistent Undo
set undofile
set undodir=~/.vim/undo
set undolevels=1000

" Basic Status Line
set statusline=%f%m%r%l/%L%c

" Line Wrapping
set wrap
set linebreak

" File Explorer (netrw)
map <C-n> :Ex<CR>

" Enable Syntax Highlighting
syntax enable
set background=dark
