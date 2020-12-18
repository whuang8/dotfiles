set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

set completeopt=menuone,noinsert,noselect
lua require'nvim_lsp'.solargraph.setup{ on_attach=require'completion'.on_attach }
