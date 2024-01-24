#!/bin/bash
if [ -d "$ZSH_CUSTOM/plugins/zsh-vi-mode" ]; then
    echo "zsh-vi-mode already satisfied."
else
    sudo git clone https://github.com/jeffreytse/zsh-vi-mode $ZSH_CUSTOM/plugins/zsh-vi-mode
fi

#if ! command -v rsync &> /dev/null
#then
#    sudo pacman -S rsync
#fi

#rm -rf $HOME/.config/swww/
#git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout -f

#rsync -aI --exclude='README.md' --exclude='.git' --exclude='.sh' . $HOME/
if [ $? -eq 0 ]; then
    echo "dotfiles successfully updated."
else
    echo "failed configuring dotfiles"
fi
: '
line=$(grep -n "# deny = \*" /etc/security/faillock.conf | cut -d: -f1)
if [[ $(sed -n "${line}p" /etc/security/faillock.conf | cut -d= -f2) -ne 5 ]]; then
    sed -i "${line}s/.*/deny = 5/" /etc/security/faillock.conf
    echo "changed faillock deny to 5"
fi
'
#Some terrible ahh scripting :3 
