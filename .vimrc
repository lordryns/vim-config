set nocompatible
syntax on
filetype plugin indent on
set background=dark
set clipboard=unnamedplus
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

call plug#begin() 
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Enable completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ "\<TAB>"
inoremap <silent><expr> <S-TAB>
      \ pumvisible() ? "\<C-p>" :
      \ "\<C-h>"

" Use <CR> to confirm completion
inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"

" Show diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
set termguicolors
let g:material_theme_style = 'darker'
colorscheme material
