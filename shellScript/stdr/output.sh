#! /bin/bash

ls -al 1>stdout.txt 2>stderr.txt #Premier cas
: '
stdout : affiche le resultat de la commande ls -al
stderr : affiche les erreurs de la commande ls -al (si on a ecrit ls +al par exemple)
'
ls +al >stdouterr.txt 2>&1 #Second cas : Le fichier stdouterr.txt a ete creer manuellement par moi depuis le terminal, IL NE SE CREE PAS AUTOMATIQUEMENT
: '
2>&1 : on affiche dans le fichier stdouterr le resultat de la commande, mais egalement ses erreurs (vu que dans notre cas on a mis +al, alors le ficher contiendra seulement un messsage d"erreur indiquant que la commande n"existe pas

ATTENTION : On doit d"abord creer notre fichier manuellement, contrairement au premier cas
'

ls +cpml >& stdouterr2.txt # Troisieme cas: meme but que second mais on ecrit dune facon plus raccourcie