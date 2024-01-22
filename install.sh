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

rsync -aI --exclude='README.md' --exclude='.git' . $HOME/
if [ $? -eq 0 ]; then
    echo "dotfiles successfully updated."
else
    echo "dotfiles failed to move."
fi

rm $HOME/.config/swww/Cyberpunk-Edge/cyberpunk_dave.png 2>/dev/null || echo "dave gone already."
rm $HOME/.config/swww/Cyberpunk-Edge/lucy_1.jpg 2>/dev/null || echo "no lucy.png."
rm $HOME/.config/swww/Cyberpunk-Edge/lucy_2.png 2>/dev/null || echo "no lucy.png pt-II."
rm $HOME/.config/swww/Frosted-Glass/cloudy_mountain.png 2>/dev/null || echo "no mountain png."
rm $HOME/.config/swww/Catppuccin-Mocha/apex_octane.jpg 2>/dev/null || echo "no roof sit guy."
rm $HOME/.config/swww/Catppuccin-Mocha/hanged_man_tree.jpg 2>/dev/null || echo "no dead people background."
rm $HOME/.config/swww/Catppuccin-Mocha/switch_swirl.jpg 2>/dev/null || echo "no mech switch."
rm $HOME/.config/swww/Catppuccin-Mocha/rebellious_tower.png 2>/dev/null || echo "no tower."
rm $HOME/.config/swww/Catppuccin-Latte/chainsaw_angel_lake.jpg 2>/dev/null || echo "no angel thing."
rm $HOME/.config/swww/Catppuccin-Latte/jormungandr.jpg 2>/dev/null || echo "no dinosaur thing."
rm $HOME/.config/swww/Catppuccin-Latte/reindeer_forest.jpg 2>/dev/null || echo "no deer."
rm $HOME/.config/swww/Catppuccin-Latte/samurai_strike.jpg 2>/dev/null || echo "no flying head."
rm $HOME/.config/swww/Catppuccin-Latte/waifu_jasmin.jpg 2>/dev/null || echo "no waifu...?"
rm $HOME/.config/swww/Catppuccin-Latte/waifu_angel.jpg 2>/dev/null || echo "no angel thing again."
rm $HOME/.config/swww/Frosted-Glass/blue_desert.png 2>/dev/null || echo "no mid blue background."
rm $HOME/.config/swww/Graphite-Mono/nier_mech.jpg 2>/dev/null || echo "no gray thing."
rm $HOME/.config/swww/Graphite-Mono/nier_2b.jpg 2>/dev/null || echo "no whatever this is thing."
rm $HOME/.config/swww/Graphite-Mono/limbo.jpg 2>/dev/null || echo "no also what this thing."
rm $HOME/.config/swww/Graphite-Mono/gojo.png 2>/dev/null || echo "no. this guy gone"
rm $HOME/.config/swww/Graphite-Mono/chainsawman_sketch.png 2>/dev/null || echo "no chainsaw head guy already."
rm $HOME/.config/swww/Gruvbox-Retro/patterns.jpg 2>/dev/null || echo "no patterns."
rm $HOME/.config/swww/Gruvbox-Retro/finalizer.png 2>/dev/null || echo "no burning head thing."
rm $HOME/.config/swww/Rose-Pine/red_purple.jpg 2>/dev/null || echo "no girl."

echo "Finished configuring dotfiles"
#Some terrible ahh scripting :3 
