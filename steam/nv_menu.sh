#!/bin/bash

# Define the options
OPTIONS=("1" "Install Steam/Lutris Container"
         "2" "Uninstall Steam/Lutris/container")
         
         
# Display the dialog and get the user choice
CHOICE=$(dialog --clear --backtitle "NVIDIA Steam/Lutris/ Container Management" \
                --title "Main Menu" \
                --menu "Choose an option:" 15 75 3 \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear

# Act based on the user choice
case $CHOICE in
    1)
        echo "Installing Steam Container..."
        curl -L https://github.com/uureel/batocera.pro/raw/main/steam/nv_install.sh | bash
        ;;
    2)
        echo "Loading Uninstall script..."
        curl -L https://github.com/uureel/batocera.pro/raw/main/steam/uninstall.sh | bash
        ;;
    *)
        echo "No valid option selected or cancelled. Exiting."
        ;;
esac