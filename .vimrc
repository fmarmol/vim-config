set nocompatible
set number
set mouse=a
set hlsearch
set ruler
set expandtab
set nowrap
set path+=**
set wildmenu
set tabstop=4
set shiftwidth=4
set autoindent
set clipboard=unnamed
set colorcolumn=81
set background=dark
set backspace=2
colorscheme badwolf

syntax on
filetype indent plugin on
highlight ExtraWhiteSpace ctermbg=red guibg=red

match ExtraWhiteSpace /\s\+$/
noremap <Tab> gt
noremap <S-Tab> gT
nnoremap ; :
inoremap jk <esc>
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
" Plug 'fatih/molokai'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --go-completer' }
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'SirVer/ultisnips'
" Plug 'davidhalter/jedi-vim'
Plug 'majutsushi/tagbar'
Plug 'cespare/vim-toml'
Plug 'nvie/vim-flake8'
" Plug 'w0rp/ale'
" Plug 'ctrlpvim/ctrlp.vim'

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Initialize plugin system
call plug#end()

let g:go_fmt_command="goimports"
let g:flake8_show_in_file=1
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap "" ea"<esc>bi"<esc>el
nnoremap '' ea'<esc>bi'<esc>el

autocmd FileType python set foldmethod=indent foldlevel=99
let python_highlight_all=1


"python with virtualenv support
python3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  exec(open(activate_this).read(), dict(__file__=activate_this))
EOF
