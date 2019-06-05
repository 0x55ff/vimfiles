#!/usr/bin/env bash

script_dir=$(dirname $(realpath $0))

if [ ! -d $script_dir/autoload ];then
    mkdir -p $script_dir/autoload
fi

if [ ! -d $script_dir/plugged ];then
    mkdir -p $script_dir/plugged
fi

if [ ! -d $script_dir/swapfiles ];then
    mkdir -p $script_dir/swapfiles
fi

if [ ! -d $script_dir/undofiles ];then
    mkdir -p $script_dir/undofiles
fi

if [ ! -f $script_dir/autoload/plug.vim ];then
    curl -fLo $script_dir/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi


if ! [  $script_dir  -ef ~/.vim ];then
    if [ -e ~/.vim ];then
        rm -rf ~/.vim.bkp
        mv -f ~/.vim ~/.vim.bkp
    fi
    cp -rf $script_dir ~/.vim
fi


if [ -f "~/.vimrc" ];then
    mv ~/.vimrc ~/.vimrc.bkp
fi

echo "source ~/.vim/vimrc" > ~/.vimrc

vim +PlugInstall +qall

