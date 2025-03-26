./update.sh
pacman -S --need --noconfirm jq
clear

packages=$(cat ./pacman.json)
string=$(echo "$packages" | jq -r '[.[] | select(.install == true) | .packages[]] | join(" ")')

pacman -S --need --noconfirm $string

# clear