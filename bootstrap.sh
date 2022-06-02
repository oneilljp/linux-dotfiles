#!/bin/bash

# Installs nerd fonts that you want per user from github
function install_fonts {
# List what fonts you want to install here
  # ref: https://github.com/ryanoasis/nerd-fonts
  fonts=("Iosevka" "FantasqueSansMono")

  echo -e "Installing fonts, may take a second...\n"
  echo -e "Cloning main repo..."
  git clone --filter=blob:none --sparse git@github.com:ryanoasis/nerd-fonts &> /dev/null

  cd nerd-fonts

  # Checkout each font directory
  for font in ${fonts[*]}; do
    echo -e "Cloning $font"
    git sparse-checkout add "patched-fonts/$font" &> /dev/null
  done

  echo -e "Running font installer...\n"
  mkdir -p ~/.local/share/fonts
  font_count=$(./install.sh -L | wc -l)

  ./install.sh
  echo "$font_count fonts installed"

  cd ..
  rm -rf nerd-fonts
}

echo "
===========================================================================
---------------------------------------------------------------------------
===========================================================================
 ____   _                      
|  _ \ (_) ___   ___  ___  ___ 
| |_) || |/ __| / __|/ _ \/ __|
|  __/ | |\__ \| (__|  __/\__ \ 
|_|    |_||___/ \___|\___||___/
                               
 ____                 _         _                                         
| __ )   ___    ___  | |_  ___ | |_  _ __  __ _  _ __   _ __    ___  _ __ 
|  _ \  / _ \  / _ \ | __|/ __|| __|| '__|/ _\` || '_ \ | '_ \  / _ \| '__|
| |_) || (_) || (_) || |_ \__ \| |_ | |  | (_| || |_) || |_) ||  __/| |   
|____/  \___/  \___/  \__||___/ \__||_|   \__,_|| .__/ | .__/  \___||_|   
                                                |_|    |_|   
===========================================================================
---------------------------------------------------------------------------
===========================================================================
Attempting to make JP's life easier since 2022

Available Apps to Boostrap:
General) fish mako mpd zathura fonts
Terminals) kitty wezterm
TUI Apps) btop ncmpcpp nvim 
River) river waybar
"

apps=()


# Manual Mode
read -p "What applications do you want bootstrapped?: " -a apps

count=0
fonts=False
font_rec=False

for app in ${apps[*]}; do
  case $app in
    fish)     stow -t "$HOME/.config/" fish                       ;;
    btop)     stow -t "$HOME/.config/" btop                       ;;
    mako)     stow -t "$HOME/.config/" mako                       ;;
    mpd)      stow -t "$HOME/.config/" mpd                        ;;
    ncmpcpp)  stow -t "$HOME/.config/" ncmpcpp                    ;;
    zathura)  stow -t "$HOME/.config/" zathura                    ;;
    waybar)   font_rec=True; stow -t "$HOME/.config/" waybar      ;;
    kitty)    font_rec=True; stow -t "$HOME/.config/" kitty       ;;
    wezterm)  font_rec=True; stow -t "$HOME/.config/" wezterm     ;;
    river)    stow -t "$HOME/.config/" river                      ;;
    nvim)     stow -t "$HOME/.config/" nvim                       ;;
    fonts)    fonts=True                                          ;;
    *)
      echo "$app not supported, skipping..."
      continue
    ;;
  esac
  ((count=count+1))
done

if [[ $font_rec = True && $fonts = False ]]; then
  echo -e "\nYou've bootstrapped an app whose config uses non default fonts. Be sure to boostrap \`fonts\` before you go!\n"
fi

if [ $fonts = True ] ; then
  install_fonts 
fi

echo "$count applications setup 😄"
