set nocompatible " Enter the current millennium

let mapleader = ' '
let g:everforest_background = 'hard'
let g:netrw_banner = 0
let g:undotree_WindowLayout = 3
let g:undotree_DiffAutoOpen = 0
let g:undotree_SplitWidth = 50

set wildmenu
set noswapfile
set nowrap
set noshowmode
set expandtab
set smartindent
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
set path+=**
set undodir=~/.vim/undodir
set viewoptions=folds
set foldtext=getline(v:foldstart)
set shell=/etc/profiles/per-user/piperinnshall/bin/bash
set statusline=\ \ \ %f\ %l:%c\ %m
set fillchars=eob:\ ,fold:\ ,foldopen:│,foldsep:│,foldclose:›

vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>e <cmd>Ex<cr>
nnoremap <leader>ct <cmd>CTags<cr>
nnoremap <Esc> <cmd>nohlsearch<cr>
nnoremap <C-p> :find 
nnoremap <C-c> <cmd>cclose<cr>
nnoremap g= <cmd>Format<cr>
nnoremap [q :cprevious<CR>
nnoremap ]q :cnext<CR>
nnoremap <leader>u <cmd>UndotreeToggle<cr>
nnoremap gcc <Plug>CommentaryLine
vnoremap gc <Plug>Commentary

autocmd BufWinLeave * silent! mkview
autocmd BufWinEnter * silent! loadview

command! CTags execute '!universal-ctags -R .'
command! Spell normal! ciw \<C-x>\<C-s>
command! Format let b:pos = getpos('.') | execute 'normal! gg gqG' | call setpos('.', b:pos) | normal! zz

for l in (filereadable('.ignore') ? readfile('.ignore') : []) + (filereadable('.gitignore') ? readfile('.gitignore') : [])
  let l = trim(substitute(l, '/$', '', ''))
  if l != '' && l !~ '^#' | exe 'set wildignore+=*/' . l . '/*' | endif
endfor

:iabbrev @@ Lorem ipsum dolor sit amet consectetur adipiscing elit quisque faucibus ex sapien vitae pellentesque sem placerat in id cursus mi pretium tellus duis convallis tempus leo eu aenean sed diam urna tempor pulvinar vivamus fringilla lacus nec metus bibendum egestas iaculis massa nisl malesuada lacinia integer nunc posuere ut hendrerit.

let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"

syntax on
filetype plugin indent on
colorscheme everforest
hi StatusLineNC  guibg=NONE
hi StatusLine    guibg=NONE
hi Folded        guibg=NONE

