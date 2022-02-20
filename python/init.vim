filetype plugin on
filetype indent on
filetype on

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
set omnifunc=syntaxcomplete#Complete


call plug#begin()

Plug 'sainnhe/sonokai' " Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'davidhalter/jedi-vim'
call plug#end()

" Begin Theme

let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 0
let g:sonokai_diagnostic_line_highlight = 1
let g:sonokai_current_word = 'bold'
let g:airline_theme = 'sonokai'
colorscheme sonokai

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" End Theme

" Python
let g:ale_python_flake8_options = '--max-line-length=88'

" Ale
 let g:ale_fixers = {
 \   'python': ['autopep8'],
 \}

let g:jedi#use_tabs_not_buffers = 1
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nmap <C-a> :NERDTreeToggle<CR>
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"


augroup fish_syntax
	au!
	autocmd BufNewFile,BufRead *.fish set syntax=sh
augroup end
