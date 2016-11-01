#!/bin/bash
# A script to create a background slideshow from png files in a directory
# Based on https://community.linuxmint.com/tutorial/view/997

# The directory containing the backgrounds.
DIR="/home/bechin/Pictures/Backgrounds/"

# Make sure spaces do not break our script.
IFS=' '

# An array to hold the names of the files to display.
ARRAY=($DIR*.png)

# A counter variable that selects the current picture.
declare -i PIC=0

while true;do

# Command to set background image.
gsettings set org.mate.background picture-filename ${ARRAY[$PIC]}

# Update the counter to select the next picture.
let "PIC+=1"
let "PIC%=${#ARRAY[@]}"

# Specify how long to wait in seconds before the next wallpaper.
sleep 900

done

