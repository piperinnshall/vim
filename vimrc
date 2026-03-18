syntax on
filetype plugin indent on

let mapleader = ' '
let g:everforest_background = 'hard'
let g:netrw_banner = 0
let g:undotree_WindowLayout = 3
let g:undotree_DiffAutoOpen = 0
let g:undotree_SplitWidth = 50
let $FZF_DEFAULT_OPTS = '--layout=reverse'
let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --glob "!.git/"'

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
set incsearch
set hlsearch
set termguicolors
set ttimeoutlen=0
set tabstop=2
set shiftwidth=2
set laststatus=2
set scrolloff=8
set updatetime=50
set background=light
set signcolumn=yes
set foldcolumn=1
set undofile
set undodir=~/.vim/undodir
set viewoptions=folds
set foldtext=getline(v:foldstart)
set shell=/etc/profiles/per-user/piperinnshall/bin/bash
set statusline=\ \ \ %f\ %l:%c\ %m
set fillchars=eob:\ ,fold:\ ,foldopen:│,foldsep:│,foldclose:›

vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>e <cmd>Ex<cr>
nnoremap g= <cmd>Format<cr>
nnoremap <leader>ct <cmd>CTags<cr>
nnoremap <Esc> <cmd>nohlsearch<cr>
nnoremap <C-c> <cmd>cclose<cr>

nnoremap <leader>u <cmd>UndotreeToggle<cr>
nnoremap gcc <Plug>CommentaryLine
vnoremap gc <Plug>Commentary
nnoremap <C-p> <cmd>Files<cr>
nnoremap <C-g> <cmd>Rg<cr>
nnoremap z= <cmd>Spell<cr>

autocmd BufWinLeave * silent! mkview
autocmd BufWinEnter * silent! loadview

command! CTags execute '!universal-ctags -R .'
command! Format let b:pos = getpos('.') | execute 'normal! gg=G' | call setpos('.', b:pos) | normal! zz
command! Spell call fzf#run({'source': spellsuggest(expand('<cword>')), 'sink': {w -> execute('normal! "_ciw' . w)}, 'down': 10})

let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"

colorscheme everforest
hi StatusLineNC  guibg=NONE
hi StatusLine    guibg=NONE
hi NormalFloat   guibg=NONE
hi FloatBorder   guibg=NONE
hi Folded        guibg=NONE

