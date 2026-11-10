#!/bin/bash

source ./sys1_part_1.sh #Importation du fichier réalisé partie 1

# echo $(dimension imagesUR1/15412_IMG_1883_2048x1365.jpg)

#Definition d'une nouvelle fonction
function MyFonction() {
    for args in "$@" #Iteration pour les elements en paramètre
    do  
    echo $(dimension $args) #Appel de la fonction dimension importé pour chaque paramètre et affichage du résultat
    done
}

# MyFonction "imagesUR1/15412_IMG_1883_2048x1365.jpg" "imagesUR1/15396_Pelouse_1000x667.jpg"
 #Execution de la fonction