set nocompatible
set encoding=utf-8
set number " show line number
set showcmd

syntax on
set showmode
filetype plugin indent on

set tabstop=2
set expandtab " insert spaces
set hidden " avoid having to write changes before editing another file 
set autoindent

" Proper search
set smartcase " override the ignorecase option if the search contains upper case characters
set ignorecase " ignore case
set gdefault " when replacing append a g (affect all lines)
set incsearch " search as characters are entered
set hlsearch " highlight matches

set background=dark

" ******* Mappings *******
"
imap jk <Esc>
:let mapleader = ","
nnoremap j gj
nnoremap k gk

" ******* Plugins *******
"
call plug#begin('~/.config/nvim/plugged')
Plug 'itchyny/lightline.vim' " color line at the bottom
Plug 'rust-lang/rust.vim'
Plug 'pangloss/vim-javascript'
Plug 'vimwiki/vimwiki' " vim wiki plugin to create local wiki
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'tpope/vim-commentary' "https://github.com/tpope/vim-commentary
Plug 'morhetz/gruvbox' " gruvbox theme
call plug#end()

set termguicolors
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark=1
autocmd vimenter * ++nested colorscheme gruvbox

let g:rustfmt_autosave = 1
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
      \ }
function! LightlineFilename()
  return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction
