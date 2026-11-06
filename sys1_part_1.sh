#!/bin/bash

function dimension() {
    nom_fichier=$1;
    petite_dimension= identify $nom_fichier
    fichier_intermediaire= ${petite_dimension/%.jpg/_square.jpg}
    echo $petite_dimension
    echo $fichier_intermediaire
}

dimension imagesUR1/15412_IMG_1883_2048x1365.jpg