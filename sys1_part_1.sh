#!/bin/bash

function dimension() {
    if [ $# -ge 1 ]; then #on verifi qu'au moins un parametre est present
        nom_fichier=$1; #on utilise pas $1 directement, une variable intermédiaire est crée
        petite_dimension= identify $nom_fichier;
        nom_intermediaire=${nom_fichier//.jpg/_square.jpg}
        return $petite_dimension, ;
    else
        echo "erreur"; #sans parametre, rien ne peut s'executer
    fi
}

# echo $(dimension imagesUR1/15412_IMG_1883_2048x1365.jpg)