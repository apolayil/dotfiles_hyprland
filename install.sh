#!/bin/bash
if [ -d "$ZSH_CUSTOM/plugins/zsh-vi-mode/.git" ]; then
    echo "zsh-vi-mode already satisfied."
else
    sudo git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH_CUSTOM/plugins/zsh-vi-mode
fi

if ! command -v rsync &> /dev/null
then
    sudo pacman -S rsync
fi

rsync -aI --exclude='README.md' --exclude='.git' . $HOME/
