#!/usr/bin/env bash


git pull

if [ -e "~/.vim" ];then
    mv ~/.vim ~/.vim.bkp
fi
cp -rf . ~/.vim

if [ -f "~/.vimrc" ];then
    mv ~/.vimrc ~/.vimrc.bkp
fi

echo "source ~/.vim/vimrc" > ~/.vimrc

