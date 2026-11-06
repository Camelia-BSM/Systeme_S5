#!/bin/bash

function dimension() {
    if [ $# -ge 1 ]; then #on verifi qu'au moins un parametre est present
        nom_fichier=$1; #on utilise pas $1 directement, une variable intermédiaire est crée
        petite_dimension = identify $nom_fichier;
        nom_intermediaire= ${petite_dimension//.jpg/_square.jpg}
        echo "test"
        echo $petite_dimension
        echo $nom_intermediaire
        return $petite_dimension;
    else
        echo "erreur"; #sans parametre, rien ne peut s'executer
    fi
}

echo $(dimension imagesUR1/15412_IMG_1883_2048x1365.jpg)