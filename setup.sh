#!/usr/bin/env bash

script_dir=$(dirname $(realpath $0))

if [ ! -f $script_dir/autoload/plug.vim ];then
    curl -fLo $script_dir/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [ ! -d $script_dir/plugged ];then
    mkdir -p $script_dir/plugged
fi


#if [ ! -d $script_dir/plugged/vim-quantum ];then
#    cd $script_dir/plugged
#    git clone https://github.com/tyrannicaltoucan/vim-quantum.git
#fi

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

