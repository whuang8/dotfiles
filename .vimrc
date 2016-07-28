" Basic settings
syntax enable
set number
set cursorline
filetype plugin indent on
filetype on
filetype indent on
set iskeyword+=-
set backspace=indent,eol,start

" File specific indentation settings
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType scss setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType go setlocal shiftwidth=8 tabstop=8
autocmd FileType proto setlocal shiftwidth=2 tabstop=2
autocmd FileType tpl setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType yml setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2
autocmd FileType html setlocal shiftwidth=2 tabstop=2

" Plugins!
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'mileszs/ack.vim'
Plug 'vim-scripts/mru.vim'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-bundler'

Plug 'tpope/vim-commentary'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'scrooloose/nerdtree'
call plug#end()

" Double tap space for fzf search
let mapleader = " "
nnoremap <silent> <Leader><Space> :Files<CR>


let NERDTreeShowHidden=1
" Space and dash to toggle Nerdtree
nnoremap <silent> <Leader>- :NERDTreeToggle<CR>

" this is the key to jump to the nerdtree window from any other window
nnoremap <silent><Leader>r :NERDTreeFind<CR>


" PANE SETTINGS
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Vim-go
let g:go_fmt_command = "goimports"

