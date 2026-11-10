#!/bin/bash

nom_fichier="$1" #on utilise pas $1 directement, une variable intermediaire est cree
nom_intermediaire=${nom_fichier//.jpg/_square.jpg} #on stocke le nom intermediaire
largeur=$(identify -format "%w" "$nom_fichier") #on a la largeur du fichier
hauteur=$(identify -format "%h" "$nom_fichier") #on stocke egalement sa longueur

if [ "$largeur" -lt "$hauteur" ]; then #si la hauteur est plus grande
    petite_dimension=$largeur #on coupe selon la largeur, naturellement plus petite
else
    petite_dimension=$hauteur #pareil avec la hauteur dans le cas oppose
fi

convert "$nom_fichier" -gravity center -crop ${petite_dimension}x${petite_dimension}+0+0 "$nom_intermediaire"
#on converti le fichier de base en le centrant sur son millieu
#on coupe un carre de dimension (plus petit cote)x(plus petit cote)
#on ne decale pas la zone a decoupe, le (0,0) est le deplacement a partir du centre de gravite

nom_final="${nom_fichier//.jpg/.pdf}" #ceci est le nom du fichier pdf final
img2pdf "$nom_intermediaire" -o "$nom_final" #on en fait simplement un PDF