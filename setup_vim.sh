#!/bin/bash

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# backup your origin .vimrc
mv ~/.vimrc ~/.vim/.vimrc.bak

# use my configuration
cp ./vimrc ~/.vimrc

# use soft link
#cp ./vimrc ~/.vim/vimrc
#ln ~/.vimrc ~/.vim/vimrc

vim +PlugInstall +qall

echo "see https://github.com/Crazyokd/my-vimrc.git for more infomation"

