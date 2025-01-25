set number
set relativenumber
set tabstop=2
set termguicolors
set mouse=a
set clipboard=unnamedplus
syntax on

call plug#begin()

" List your plugins here
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'tribela/vim-transparent'
Plug 'vim-airline/vim-airline'

call plug#end()

colorscheme catppuccin_mocha
let g:airline_theme = 'catppuccin_mocha'
let g:transparent_level = 95

inoremap jk <Esc>
nnoremap <Space>h :nohlsearch<CR>
