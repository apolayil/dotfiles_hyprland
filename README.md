# dotfiles_hyprland
```
                   -`                          ​​  > ​​ ​Arch Linux x86_64 
                  .o+`                        ┌──────────────────────────────────────────────────┐ 
                 `ooo/                         ​​ ​ > Kernel : 6.6.13-1-lts 
                `+oooo:                        ​​ ​ > Uptime : 8h 17m 
               `+oooooo:                       ​​ ​ > Packages : 816 (pacman) 
               -+oooooo+:                      ​​ ​ > Resolution : 2560x1440 
             `/:-:++oooo+:                     ​​ ​ > DE : Hyprland 
            `/++++/+++++++:                    ​​ ​ > Terminal : kitty 
           `/++++++++++++++:                  └──────────────────────────────────────────────────┘ 
          `/+++ooooooooooooo/`                 
         ./ooosssso++osssssso+`                ​​ ​​​ > : arvin-dev@Arch
        .oossssso-````/ossssss+`              ┌──────────────────────────────────────────────────┐ 
       -osssssso.      :ssssssso.              ​​ ​ > CPU : AMD Ryzen 7 5700X (16) @ 3.400GHz [50.1°on] 
      :osssssss/        osssso+++.             ​​ ​ > GPU : AMD ATI Radeon RX 6700/6700 XT/6750 XT / 6800M/6850M XT 
     /ossssssss/        +ssssooo/-             ​​ ​ > Memory : 6437MiB / 32019MiB 
   `/ossssso+/:-        -:/+osssso+-          └──────────────────────────────────────────────────┘ 
  `+sso+:-`                 `.-/+oso:          
 `++:.                           `-/+/ 
 .`                                 `/


```
Used [Hyprdots](https://github.com/prasanthrangan/hyprdots) as base.



## Installation
Setting up the dotfiles repository can be found on the [Arch Wiki](https://wiki.archlinux.org/title/Dotfiles).  

```bash
  $ git clone --bare https://github.com/apolayil/dotfiles_hyprland.git $HOME/.dotfiles
  $ alias dots='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
  $ config checkout
  $ dots config --local status.showUntrackedFiles no
```
