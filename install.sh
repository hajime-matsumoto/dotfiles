#!/usr/bin/env bash
cd ~/.

# install git
echo "Check If Git Installed"
which git > /dev/null 2>&1
if [ $? -eq 0 ] ; then
    echo Success!
else
    echo Install git! >&2
    sudo apt-get install git-core
fi

# install vim
echo "Check If Vim Installed"
which vim > /dev/null 2>&1
if [ $? -eq 0 ] ; then
    echo Success!
else
    echo Install vim! >&2
    sudo apt-get install vim
fi

# install tmux
echo "Check If Tmux Installed"
which tmux > /dev/null 2>&1
if [ $? -eq 0 ] ; then
    echo Success!
else
    echo Install tmux! >&2
    sudo apt-get install tmux
fi


# install zsh
echo "Check If Zsh Installed"
which zsh > /dev/null 2>&1
if [ $? -eq 0 ] ; then
    echo Success!
else
    echo Install zsh! >&2
    sudo apt-get install zsh
fi

# install setting
echo Install Setting! >&2

cd ~/

ln -s ~/dotfiles/vim.d/_vimrc .vimrc
ln -s ~/dotfiles/config/_gitconfig .gitconfig
ln -s ~/dotfiles/config/_tmux.conf .tmux.conf
ln -s ~/dotfiles/zsh.d/_zshrc .zshrc
ln -s ~/dotfiles/zsh.d/_zshenv .zshenv
ln -s ~/dotfiles/ssh.d/config .ssh/config

# NeoBundleInstall from commandline
vim +NeoBundleInstall +qa
