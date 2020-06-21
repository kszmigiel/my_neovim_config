call plug#begin(stdpath('data') . '/plugged')
Plug 'morhetz/gruvbox'
Plug 'neovim/nvim-lsp'
Plug 'preservim/nerdtree'
call plug#end()

colorscheme gruvbox

" autocompletion
set completeopt-=preview
set omnifunc=syntaxcomplete#Complete

" python
lua require'nvim_lsp'.pyls.setup{}
autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc

" go
lua require'nvim_lsp'.gopls.setup{}
autocmd Filetype go setlocal omnifunc=v:lua.vim.lsp.omnifunc

" nerdtree
map <C-n> :NERDTreeToggle<CR>

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set copyindent
