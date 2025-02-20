set number
set relativenumber
set tabstop=2
set termguicolors
set mouse=a
set hlsearch
set clipboard=unnamedplus
syntax on

call plug#begin()

" List your plugins here
Plug 'ghifarit53/tokyonight-vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'tribela/vim-transparent'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()


let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:airline_theme='tokyonight'

colorscheme catppuccin_mocha

inoremap jk <Esc>
nnoremap <Space>h :nohlsearch<CR>
