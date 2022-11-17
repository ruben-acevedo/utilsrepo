syntax enable
filetype plugin indent on

" vanilla autoclose
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" 3up,3down
noremap <S-Up> 3k
noremap <S-Down> 3j
imap <TAB> <C-y>
" show line
set number
set laststatus=2

" rustup autosave
 let g:rustfmt_autosave = 1

"airline theme
let g:airline_theme='transparent'

" Allow copy and paste from system clipboard
set clipboard=unnamedplus

" Tab Options

set shiftwidth=2
set tabstop=2
set softtabstop=2 " Number of spaces a tab counts when editing
set expandtab

" NERDTree toggle settings
nnoremap <silent>F :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-q> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-a> :tabnext<CR>

" theme options
 set background=dark
colorscheme PaperColor

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'NLKNguyen/papercolor-theme'

call plug#end()
