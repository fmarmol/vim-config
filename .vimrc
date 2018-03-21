set nocompatible
syntax on
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
set clipboard=unnamedplus

colorscheme molokai
highlight ExtraWhiteSpace ctermbg=red guibg=red
match ExtraWhiteSpace /\s\+$/
noremap <Tab> gt
noremap <S-Tab> gT
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'fatih/molokai'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --go-completer' }
Plug 'nsf/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Initialize plugin system
call plug#end()

let g:go_fmt_command="goimports"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap "" ea"<esc>bi"<esc>el
nnoremap '' ea'<esc>bi'<esc>el
