set nocompatible
call pathogen#infect()
call pathogen#helptags()

filetyp plugin indent on
syntax on

" Track the engine.
"Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
"Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

set tabstop=4 " show existing tab with 4 spaces width
set shiftwidth=4 " when indent with '>', use 4 spaces width
set expandtab " On pressing tab, insert 4 spaces
set number " display line number
set incsearch " Search as we type
set hlsearch "Highlight
set wildmode=longest,list,full "for a bash-like behaviour when opening files or setting options
set wildmenu
set autochdir " Set working directory to the current file
set tw=79


" || Airline settings ||
set laststatus=2 "status bar
let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1
"let g:airline_theme='molokai'
"let g:airline_mode_map = {
  "\ '__' : '',
  "\ 'n'  : '',
  "\ 'i'  : '',
  "\ 'R'  : '',
  "\ 'c'  : '',
  "\ 'v'  : '',
  "\ 'V'  : '',
  "\ '' : '',
  "\ 's'  : '',
  "\ 'S'  : '',
  "\ '' : '',
  "\ }
" Show just the filename
" let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'


" || Syntastic settings ||
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" || Tagbar settings ||
let g:tagbar_autoclose = 1


" || Easy-tag settings ||
let g:easytags_auto_highlight = 0
let g:easytags_auto_update = 1


" || Customized mappings ||
let mapleader=" "
noremap! jj <esc>
noremap! kk <esc>
" go faster through file
noremap <C-j> 5j
noremap <C-k> 5k
noremap <C-l> w
noremap <C-h> b

nnoremap <leader>v <C-v>
noremap <S-l> gt
noremap <S-h> gT
" copy/paste from/to system clipboard
noremap <leader>y "+y
noremap <leader>p "+p
"noremap <leader>j <C-]>
noremap <leader>j :tj <C-r><C-w><cr>
noremap <leader>J <C-t>
nnoremap <leader>S :SyntasticToggleMode<cr>
nnoremap <leader>l :TagbarToggle<cr>
" remove all highlight
nnoremap <leader>/ :noh<cr>
"delete without copying
noremap <S-d> "_d 
" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>
" Move to the next buffer
nmap L :bnext<CR>
" Move to the previous buffer
nmap H :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>
" For auto path-completion
inoremap <S-Tab> <C-x><C-f>
" Pasting with respect with local indentation
nnoremap <C-p> ]p

" NERDTree
nmap <leader>D :NERDTreeToggle<cr>
" Syntastic
nmap <leader>s :SyntasticCheck<cr>
