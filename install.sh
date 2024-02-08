#!/bin/bash

if [ -d "$ZSH_CUSTOM/plugins/zsh-vi-mode" ]; then
    echo "zsh-vi-mode already satisfied."
else
    sudo git clone https://github.com/jeffreytse/zsh-vi-mode \
        /usr/share/oh-my-zsh/custom/plugins/zsh-vi-mode
    echo "zsh-vi-mode installed."
fi

# For if the repository is not cloned as --bare 
# if ! command -v rsync &> /dev/null
# then
#    sudo pacman -S rsync
# fi
# rsync -aI --exclude='README.m' --exclude='.git' --exclude='.sh' . $HOME/

rm -rf $HOME/.config/swww/
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout -f

if [ $? -eq 0 ]; then
    echo "dotfiles successfully updated."
else
    echo "failed configuring dotfiles"
fi

#Some terrible ahh scripting :3 
