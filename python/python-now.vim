filetype plugin on
filetype indent on


set number
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set encoding=UTF-8
set hidden
set incsearch
set scrolloff=8
set colorcolumn=80
set nobackup
set nowritebackup
set splitright
set autoread
set autoindent

call plug#begin()
Plug 'sainnhe/sonokai' " Theme
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-python/python-syntax'
Plug 'preservim/nerdcommenter'

call plug#end()

let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 0
let g:sonokai_diagnostic_line_highlight = 1
let g:sonokai_current_word = 'bold'
" let g:airline_theme = 'sonokai'
colorscheme sonokai

let g:NERDTreeShowHidden=1
let g:NERDTreeIgnore=[".git$"]

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'

let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTree<CR>
nnoremap <C-a> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <F4> :bd<CR>
nnoremap <silent> <S-t> :tabnew<CR> 

nmap <C-Left> :bp<CR>
nmap <C-Right> :bn<CR>
