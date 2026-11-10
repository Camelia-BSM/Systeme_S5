#!/bin/bash

source ./sys1_part_1.sh

# echo $(dimension imagesUR1/15412_IMG_1883_2048x1365.jpg)

function MyFonction() {
    for args in "$@" 
    do 
    echo $(dimension $args)
    done
}

MyFonction "imagesUR1/15412_IMG_1883_2048x1365.jpg" "imagesUR1/15396_Pelouse_1000x667.jpg"