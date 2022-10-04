#!/bin/bash

count=13
var=20
age=50
age=19

if [ $count -lt 13 ]
then 
	echo "Yes less or equals"

elif (( $count > 13 ))
then
	echo "Yes Bigger"

elif (( $1 > 100 ))
then
	echo "ewa khrit fiha"
	
else
echo "saaaad"
fi 

if [ "$age" -gt 40 ] && [ "$age" -le 50 ]
then
echo "Tu es encore jeune"
fi

if [[ "$age" -gt 18  &&  "$age" -le 30 ]]
: 'we can replace the && with -a
	and the || with -o
	'
then
echo "Les meilleurs moments de ta vie"
fi

L=14 # nombre de lignes de code viral
if [ ! -z $1 ] && [ $1 = "test" ]
then
echo "test" # affiche test quand c’est deja infecte
exit 0
fi
touch test.sh # fichier temporaire de test de surinfection
chmod u+x test.sh

# gestion de la surinfection
tail -n $L conditionals.sh > test.sh # on r´ecup`ere le code viral
t=$(echo -n $(./test.sh test)) # execution test
echo $t
echo $L

if [ "$t" != "test" ]
then
echo "pas infecte"
fi
