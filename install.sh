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
which tumx > /dev/null 2>&1
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

ln -s ~/dotfiles/_vimrc .vimrc
ln -s ~/dotfiles/_gitconfig .gitconfig
ln -s ~/dotfiles/_zshrc .zshrc
ln -s ~/dotfiles/_zsh_history .zsh_history
#ln -s ~/dotfiles/_zshrc .zshrc
#ln -s ~/dotfiles/_zshenv .zshenv

# NeoBundleInstall from commandline
vim +NeoBundleInstall +qa
