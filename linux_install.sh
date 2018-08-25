#!/bin/bash

install_dir=$(pwd)/config

function err_exit() {
    echo $1
    exit 1
}

function php_manual() {
    vimDocPath=$install_dir/.vim/bundle/vim-misc/
    vimDocFile=$install_dir/.vim/bundle/vim-misc/doc.tar.bz2
    test -e "$vimDocFile" && tar -xf $vimDocFile -C $vimDocPath
}

! vim --version | grep 8.0 &> /dev/null \
        && err_exit "没有安装vim或vim版本不是7.4"

test -e ~/.vimrc -o -e ~/.vimrc.local -o -e ~/.vim -o -e ~/.vim.plugins \
    && tar -cf ~/kyo_old_vim_$(date +%m%d%H%M%S).tar ~/.vim* &> /dev/null

rm ~/.vim* -rf &> /dev/null

# test ! -e $install_dir && mkdir $install_dir

# test -e $install_dir/vim && rm $install_dir/vim -rf

# /bin/cp config $install_dir/vim -rf || err_exit "安装失败"
php_manual

ln -s $install_dir/.vim ~/.vim
ln -s $install_dir/.vimrc ~/.vimrc
ln -s $install_dir/.vimrc.local ~/.vimrc.local
ln -s $install_dir/.vimrc.plugins ~/.vimrc.plugins

echo '安装成功!'
echo '提示: ~/kyo_old_vim.*.tar为备份安装前的vim配置，请自行处理!'
