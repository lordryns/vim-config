set nocompatible
syntax on
filetype plugin indent on
set background=dark
set clipboard=unnamedplus
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set termguicolors

call plug#begin()
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()

let g:material_theme_style = 'darker'
colorscheme material

inoremap <silent><expr> <TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <CR> pumvisible() ? asyncomplete#close_popup() : "\<CR>"

nnoremap gd :LspDefinition<CR>
nnoremap K :LspHover<CR>
nnoremap <leader>rn :LspRename<CR>
nnoremap <leader>ca :LspCodeAction<CR>
nnoremap [g :LspPreviousDiagnostic<CR>
nnoremap ]g :LspNextDiagnostic<CR>

let g:lsp_diagnostics_signs_enabled = 1
let g:lsp_diagnostics_virtual_text_enabled = 0


