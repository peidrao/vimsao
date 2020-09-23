set autoindent " Indentação automática
set smartindent 
set history=100
set mouse=a
set number
set cursorline
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set clipboard=unnamedplus
set expandtab 
set nocompatible
set laststatus=2
set encoding=utf8
filetype off       
syntax enable

set statusline+=%= 
set statusline+=\ %{LinterStatus()}

" Theme and font
packadd! dracula
colorscheme dracula

set guifont=FiraCode\ Nerd\ Font\ Mono:h12

let g:indentLine_enabled = 1

let g:airline_statusline_ontop=0
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='violet'
let g:airline#extensions#tabline#formatter = 'default'

let g:ctrlp_custom_ignore = '\v[\/]\.(swp|zip)$'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden = 1

let g:jsx_ext_required = 0
let g:prettier#quickfix_enabled = 0

" Auto fechamento de tags
let g:closetag_filenames = "*.html,*.xhtml,*.jsx,*.tsx"
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" Cores em arquivos css
let g:cssColorVimDoNotMessMyUpdatetime = 1 

"  Multiplos cursores
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_quit_key            = '<Esc>'
let g:multi_cursor_use_default_mapping=0
let g:jsx_ext_required = 0

let g:prettier#quickfix_enabled = 0

let g:cssColorVimDoNotMessMyUpdatetime = 1 

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'

let g:ale_linters = {
    \   'javascript': ['eslint'],
    \   'typescript': ['tsserver', 'tslint']
    \ }


let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"  Multiplos cursores
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_quit_key            = '<Esc>'
let g:multi_cursor_use_default_mapping=0

map <c-k>i :IndentLinesToggle<cr>
" navegação entre os buffers
nnoremap <M-Right> :bn<cr>
nnoremap <M-Left> :bp<cr>
nnoremap <c-x> :bp\|bd #<cr>


autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'alvan/vim-closetag'
Plugin 'ap/vim-css-color'
Plugin 'preservim/nerdtree' 
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'lepture/vim-css'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'dense-analysis/ale'
Plugin 'herringtondarkholme/yats.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
" Plugin 'styled-components/vim-styled-components', { 'branch': 'main' }
Plugin 'jparise/vim-graphql'
Plugin 'jiangmiao/auto-pairs'
Plugin 'sheerun/vim-polyglot'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'ryanoasis/vim-devicons'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install' }
call vundle#end()            " required
filetype plugin indent on   


if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

source ~/.vim/coc.nvimrc
source ~/.vim/errors.nvimrc
source ~/.vim/NERDTree.nvimrc

