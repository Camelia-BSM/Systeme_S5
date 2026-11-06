#!/bin/bash

function dimension() {
    nom_fichier=$1;
    petite_dimension= identify $nom_fichier
    echo $petite_dimension
}

dimension imagesUR1/15412_IMG_1883_2048x1365.jpg