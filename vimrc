syntax on
filetype plugin indent on

let mapleader = ' '
let g:everforest_background = 'hard'
let g:netrw_banner = 0
let g:undotree_WindowLayout = 3
let g:undotree_DiffAutoOpen = 0
let g:undotree_SplitWidth = 50

set noswapfile
set nowrap
set noshowmode
set expandtab
set smartindent
set hlsearch
set ignorecase
set smartcase
set autowrite
set exrc
set secure
set spell
set undofile
set termguicolors
set tabstop=2
set shiftwidth=2
set scrolloff=8
set updatetime=50
set background=light
set signcolumn=yes
set foldcolumn=1
set foldtext=getline(v:foldstart)
set shell=/etc/profiles/per-user/piperinnshall/bin/bash
set statusline=\ \ \ %f\ %l:%c\ %m
set fillchars=eob:\ ,fold:\ ,foldopen:│

fun! FzfSpellSink(w)
    exec 'normal! "_ciw' . a:w
endfun
fun! FzfSpell()
  call fzf#run({'source': spellsuggest(expand('<cword>')), 'sink': function('FzfSpellSink'), 'down': 10})
endfun

nnoremap g= mJgggqG`J
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>u <cmd>UndotreeToggle<cr>
nnoremap <C-p> <cmd>Files<cr>
nnoremap <C-g> <cmd>Rg<cr>
nnoremap z= :call FzfSpell()<cr>
nnoremap <leader>e <cmd>Ex<cr>
nnoremap <Esc> <cmd>nohlsearch<cr>
nnoremap <C-c> <cmd>cclose<cr>
nnoremap gcc <Plug>CommentaryLine
vnoremap gc <Plug>Commentary

autocmd BufWinLeave * silent! mkview
autocmd BufWinEnter * silent! loadview

let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"

colorscheme everforest
hi StatusLineNC  guibg=none
hi StatusLine    guibg=none
hi NormalFloat   guibg=none
hi FloatBorder   guibg=none
hi Folded        guibg=none
