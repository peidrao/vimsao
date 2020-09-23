filetype plugin on
set encoding=utf8

let g:NERDTreeShowHidden=1 " Mostrar arquivos ocultos
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTreeWinPos = "right"
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0

map cc <Plug>NERDCommenterInvert
map <C-n> :NERDTreeToggle<cr>

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
