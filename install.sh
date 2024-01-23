#!/bin/bash
if [ -d "$ZSH_CUSTOM/plugins/zsh-vi-mode" ]; then
    echo "zsh-vi-mode already satisfied."
else
    sudo git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH_CUSTOM/plugins/zsh-vi-mode
fi

if ! command -v rsync &> /dev/null
then
    sudo pacman -S rsync
fi

rm -rf $HOME/.config/swww/

rsync -aI --exclude='README.md' --exclude='.git' --exclude='.sh' . $HOME/
if [ $? -eq 0 ]; then
    echo "dotfiles successfully updated."
else
    echo "dotfiles failed to move."
fi

# De-anime / remove bad backgrounds
rm $HOME/.config/swww/

echo "Finished configuring dotfiles"

#Some terrible ahh scripting :3 
