" Basic settings
syntax enable
set number relativenumber
set cursorline
filetype plugin indent on
filetype on
filetype indent on
set iskeyword+=-
set backspace=indent,eol,start
set colorcolumn=80
set nohlsearch
set nofixendofline

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
Plug 'vim-scripts/mru.vim'
Plug 'tpope/vim-rbenv'
Plug 'tpope/vim-bundler'

Plug 'tpope/vim-commentary'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'scrooloose/nerdtree'

Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/gruvbox-material'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

if has('termguicolors')
	set termguicolors
endif
set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 0
colorscheme gruvbox-material

let g:python_highlight_all = 1


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

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Vim-go
let g:go_fmt_command = "goimports"

