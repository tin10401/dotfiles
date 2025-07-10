" ===================================================================
" Vim Configuration File
" ===================================================================

" ------------------------------
" Plugin Manager: vim-plug
" ------------------------------
call plug#begin('~/.vim/plugged')

" ------------------------------
" Essential Plugins
" ------------------------------

" File Explorer
Plug 'preservim/nerdtree'

" Status Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Fuzzy Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'

" Git Integration
Plug 'tpope/vim-fugitive'


" ------------------------------
" Additional Recommended Plugins
" ------------------------------

" Snippets Engine
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" ------------------------------
" Initialize Plugin System
" ------------------------------
call plug#end()
source ~/.vim/shared/shared.vim

" ------------------------------
" Basic Vim Settings
" ------------------------------

" Enable line numbers
set number
set relativenumber

" Enable syntax highlighting
syntax on

" Enable file type detection and plugins
filetype plugin indent on

" Set tabs and indentation
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Enable mouse support
set mouse=a

" Set clipboard to use the system clipboard
set clipboard=unnamedplus

" Enable true color support
set termguicolors

" Set leader key
let mapleader = " "

" ------------------------------
" Key Mappings
" ------------------------------

" Toggle NERDTree with Ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>

" Fuzzy Finder key mappings
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-f> :Rg<CR>

" Save file with Ctrl+s
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

" Quit Vim with Ctrl+q
nnoremap <C-q> :q<CR>
inoremap <C-q> <Esc>:q<CR>

" ------------------------------
" YouCompleteMe Configuration
" ------------------------------

" Enable semantic completion
let g:ycm_semantic_triggers = {
\   'cpp': ['->', '::', '.'],
\   'c': ['->', '::', '.'],
\ }

" Use Clangd as the LSP server for C/C++
let g:ycm_language_server = [
\   {
\     'name': 'clangd',
\     'cmdline': ['clangd'],
\     'filetypes': ['c', 'cpp', 'objc', 'objcpp'],
\     'root_uri': '',
\     'initialization_options': {}
\   }
\ ]

" Set completeopt for better completion experience
set completeopt=menuone,noinsert,noselect

" ------------------------------
" Airline Configuration
" ------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'

" ------------------------------
" NERDTree Configuration
" ------------------------------
" Start NERDTree automatically
" autocmd vimenter * NERDTree
" Close Vim if NERDTree is the only window open
" autocmd bufenter * if (winnr("$") == 1 && &filetype == "nerdtree") | q | endif

" ------------------------------
" FZF Configuration
" ------------------------------
let g:fzf_layout = { 'down': '~40%' }

" ------------------------------
" Git Fugitive Configuration
" ------------------------------
" Open Git status with :G
nnoremap <leader>gs :G<CR>

" ------------------------------
" Additional Settings
" ------------------------------

" Highlight search results
set hlsearch
set incsearch

" Enable line wrapping
set wrap

" Enable persistent undo
set undofile
set undodir=~/.vim/undo

" ------------------------------
" Plugin-Specific Settings

" Configure FZF options
let g:fzf_command_prefix = 'Fzf'

" ------------------------------
" End of Configuration
" ------------------------------

