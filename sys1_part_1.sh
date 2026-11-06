#!/bin/bash

function dimension() {
    if [ $# -ge 1 ]; then
        nom_fichier=$1;
        petite_dimension= identify $nom_fichier;
        nom_intermediaire=${nom_fichier//.jpg/_square.jpg}
        # echo $petite_dimension
        # echo $nom_intermediaire
        return $petite_dimension;
    else
        echo "erreur";
    fi
}

echo $(dimension imagesUR1/15412_IMG_1883_2048x1365.jpg)