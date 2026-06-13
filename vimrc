set nocompatible " Enter the current millennium

let mapleader               = ' '
let g:everforest_background = 'hard'
let g:netrw_banner          = 0
let g:undotree_WindowLayout = 3
let g:undotree_DiffAutoOpen = 0
let g:undotree_SplitWidth   = 50
let &shell                  = $SHELL
let &t_Cs                   = "\e[4:3m"
let &t_Ce                   = "\e[4:0m"

syntax          on
filetype plugin on
filetype indent on

colorscheme     everforest
hi StatusLineNC guibg=NONE
hi StatusLine   guibg=NONE
hi Folded       guibg=NONE

set tabstop     =2
set shiftwidth  =2
set laststatus  =2
set scrolloff   =8
set updatetime  =50
set ttimeoutlen =100 
set background  =light
set signcolumn  =yes
set foldcolumn  =1
set path        +=**
set undodir     =~/.vim/undodir
set viewoptions =folds
set foldtext    =getline(v:foldstart)
set statusline  =\ \ \ %f\ %l:%c\ %m
set fillchars   =eob:\ ,fold:\ ,foldopen:│,foldsep:│,foldclose:›
set wildmenu
set noswapfile
set nowrap
set noshowmode
set expandtab
set smartindent
set ignorecase
set smartcase
set autowrite
set spell
set incsearch
set hlsearch
set termguicolors
set undofile

nnoremap <leader>y  "+y
vnoremap <leader>y  "+y
nnoremap <C-p>      :find 
nnoremap z=         1z=
nnoremap g=         <cmd>Fmt<cr>
nnoremap [q         <cmd>cprevious<cr>
nnoremap ]q         <cmd>cnext<cr>
nnoremap <C-c>      <cmd>cclose<cr>
nnoremap <Esc>      <cmd>nohlsearch<cr>
nnoremap <leader>e  <cmd>Ex<cr>
nnoremap <leader>ct <cmd>!universal-ctags -R .<cr>
nnoremap <leader>u  <cmd>UndotreeToggle<cr>
nnoremap gcc        <Plug>CommentaryLine
vnoremap gc         <Plug>Commentary

command! Save silent! mkview
command! Load silent! loadview
command! Fmt let b:pos = getpos('.') | execute 'Format' | call setpos('.', b:pos)

autocmd BufRead,BufNewFile *.fear setfiletype rust | setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab

for l in filereadable('.ignore') ? readfile('.ignore') : []
  if trim(l) ==# '' | continue | endif
  execute 'set wildignore+=*/' . trim(l) . '/*'
  execute 'set wildignore+=' . trim(l)
endfor

:iabbrev @@ Lorem ipsum dolor sit amet consectetur adipiscing elit quisque faucibus ex sapien vitae pellentesque sem placerat in id cursus mi pretium tellus duis convallis tempus leo eu aenean sed diam urna tempor pulvinar vivamus fringilla lacus nec metus bibendum egestas iaculis massa nisl malesuada lacinia integer nunc posuere ut hendrerit.
