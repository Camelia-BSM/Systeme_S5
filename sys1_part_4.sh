#!/bin/bash

source ./sys1_part_1.sh #Importation du fichier réalisé partie 1
source ./sys1_part_3.sh #Importation du fichier réalisé partie 2

function generation() {
    mkdir album_photo
    MyFonction $@
    rm album_photo
}

generation "imagesUR1/15412_IMG_1883_2048x1365.jpg" "imagesUR1/15396_Pelouse_1000x667.jpg"