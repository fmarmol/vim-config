set nocompatible
syntax on
set number
set expandtab
set tabstop=4
set shiftwidth=4
set hidden
set cmdheight=2
set updatetime=300
set wildmenu
set backspace=2

set background=dark
highlight ExtraWhiteSpace ctermbg=red guibg=red
colorscheme gruvbox 

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'sjl/badwolf'
Plug 'cespare/vim-toml'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
" Python
Plug 'davidhalter/jedi-vim'
" Elixir
Plug 'slashmili/alchemist.vim'
Plug 'elixir-editors/vim-elixir'
" Golang
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1

let g:jedi#documentation_command = "K"
let g:jedi#goto_definitions_command = "gd"

let g:go_fmt_command = "goimports"
let g:syntastic_python_python_exec = "/Users/florent/.pyenv/shims/python"

