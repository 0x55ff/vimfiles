#!/usr/bin/env bash

script_dir=$(dirname $(realpath $0))



if [ ! -f $script_dir/autoload/plug.vim ];then
    curl -fLo $script_dir/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if ! [  $script_dir  -ef ~/.vim ];then
    if [ -e ~/.vim ];then
        rm -rf ~/.vim.bkp
        mv -f ~/.vim ~/.vim.bkp
    fi
fi

cp -rf $script_dir ~/.vim


if [ -f "~/.vimrc" ];then
    mv ~/.vimrc ~/.vimrc.bkp
fi

echo "source ~/.vim/vimrc" > ~/.vimrc


