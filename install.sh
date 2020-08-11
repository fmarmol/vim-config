#!/bin/sh

echo "install vim-plug"
if [ ! -f "$HOME/.vim/autload/plug.vim" ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
echo "create $HOME.vim/colors directory"
mkdir -p $HOME/.vim/colors
echo "install gruvbox color"
if [ ! -f "$HOME/.vim/colors/gruvbox.vim" ]; then
  cp ./gruvbox/colors/gruvbox.vim $HOME/.vim/colors/gruvbox.vim
fi
echo "link vimrc"
if [ ! -f "$HOME/.vimrc" ]; then
  ln -s $(pwd)/.vimrc $HOME/.vimrc
fi
