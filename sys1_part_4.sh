#!/bin/bash

function generation() {
    #mkdir album_photo
    #!/bin/bash

    if [ $# -lt 1 ]; then #on test le nombre d'argument qui doit non nul
        echo "Erreur : aucun paramètre fourni!" #si le nombre de parametre est mauvais, une erreur
        exit 1
    fi
    for nom_fichier in "$@"
    do
        if [ ! -e "$nom_fichier" ]; then #test de l'existance du fichier en entree
            echo "Erreur : le fichier choisi n'existe pas!" 
            exit 1
        fi

        nom_intermediaire=${nom_fichier//.jpg/_square.jpg} #on stocke le nom intermediaire

        if [ -e "$nom_intermediaire" ]; then #test de l'inexistance du fichier en sortie
            echo "Erreur : le fichier intermediaire existe déjà!"
            
            exit 1
        fi

        largeur=$(identify -format "%w" "$nom_fichier") #on a la largeur du fichier
        hauteur=$(identify -format "%h" "$nom_fichier") #on stocke egalement sa longueur

        if [ "$largeur" -lt "$hauteur" ]; then #si la hauteur est plus grande
            petite_dimension=$largeur #on coupe selon la largeur, naturellement plus petite
        else
            petite_dimension=$hauteur #pareil avec la hauteur dans le cas oppose
        fi

        convert "$nom_fichier" -gravity center -crop ${petite_dimension}x${petite_dimension}+0+0 "$nom_intermediaire" #cf; TP1

        nom_final="${nom_fichier//.jpg/.pdf}" #ceci est le nom du fichier pdf final

        if [ -e "$nom_final" ]; then #test de l'inexistance du fichier en sortie
            echo "Erreur : le fichier final existe déjà!"
            
            exit 1
        fi

        img2pdf "$nom_intermediaire" -o "$nom_final" #on en fait simplement un PDF
    done
    #rm album_photo
}

generation "imagesUR1/15412_IMG_1883_2048x1365.jpg" "imagesUR1/15396_Pelouse_1000x667.jpg"