set number
"set nocompatible
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set backspace=2
set nofoldenable
set foldmethod=syntax
set foldlevelstart=10
set foldnestmax=10
set ttimeoutlen=0
"""" Remapping up and down
nnoremap j k
nnoremap k j
"""" Remapping in normal mode
"nnoremap <Left>  :echoe "Use h"<CR>
"nnoremap <Right> :echoe "Use l"<CR>
"nnoremap <Up>    :echoe "Use j"<CR>
"nnoremap <Down>  :echoe "Use k"<CR>

""" Remapping begin end
" Move to beginning/end of line
nnoremap B ^
nnoremap E $
" Select all text
nnoremap vA ggVG
" The encoding must be explicitly set for tests for Windows.
" execute 'set encoding=utf-8'
"set relativenumber
nnoremap q b

" Quick Save
nnoremap <S-s> :w<CR>
" Yank to end of line
nnoremap Y y$
"Delete to the end of line
nnoremap D d$

let g:mapleader=','

" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows

" Useful settings
set history=700
set undolevels=700

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'junegunn/fzf'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'davidhalter/jedi-vim'
Plug 'tpope/vim-fugitive'
Plug 'davidhalter/jedi-vim'
Plug 'powerline/powerline'
call plug#end()

set laststatus=2
"set noshowmode

""""Setup vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
" Don't show seperators
let g:airline_left_sep=''
let g:airline_right_sep=''

""""Setup syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

""""Setup fzf

""""Setup Ale
let g:ale_completion_enabled = 1

""""Setup NERDTree
map <C-o> :NERDTreeToggle<CR>

""""Setup CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

"Settings for vim-powerline
set laststatus=2

"Notifica superamento 80-esima colonna
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"Wrap lines with arrows
set whichwrap+=<,>,h,l,[,]


:setlocal foldmethod=syntax
"set nofoldenable
