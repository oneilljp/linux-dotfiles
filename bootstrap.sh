#!/bin/bash

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
"

read -p "What applications do you want bootstrapped?: " -a apps

for app in ${apps[*]}; do
  case $app in
    river)
      echo "river"
      continue
    ;;
    nvim)
      echo "nvim"
      continue
    ;;
    waybar)
      echo "waybar"
      continue
    ;;
    *)
      echo "$app not supported, skipping..."
      continue
    ;;
  esac
done