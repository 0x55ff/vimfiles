#!/usr/bin/env bash

script_dir=$(dirname $0)

if ! [  $script_dir  -ef ~/.vim ];then
    if [ -e ~/.vim ];then
        mv -f ~/.vim ~/.vim.bkp
    fi
    cp -rf $script_dir ~/.vim
fi


if [ -f "~/.vimrc" ];then
    mv ~/.vimrc ~/.vimrc.bkp
fi

echo "source ~/.vim/vimrc" > ~/.vimrc

