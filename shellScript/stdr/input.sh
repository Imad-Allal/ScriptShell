#! /bin/bash

echo $1 $2 $3 #Afficher les elements entrées dans le terminal
echo $0 #Affiche le noms du fichier qu'on est en train d'executer

args=("$@")

echo ${args[0]} ${args[1]} ${args[2]} ${args[3]} #Affiche les 4 premiers elements entrés dans le terminal
echo $@ #Affiche tous les elements entrés dans le terminal