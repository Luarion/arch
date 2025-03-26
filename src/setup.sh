#!/bin/bash
loadkeys es

echo $'Select the preferred drive to perform the custom Arch Linux installation\n'
lsblk -d -o NAME,SIZE,MODEL
echo

read -p "Drive name: " drive
drive="/dev/$drive"

read "Insert SWAP size: " swapSize