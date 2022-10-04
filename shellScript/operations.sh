#! /bin/bash

n=20
m=4

echo $(( n + m ))
echo $(( n * m ))
echo $(( n / m ))
echo $(( n % m ))

# Version 2
echo $(expr $n + $m )

# expr doesn't recognize the '*', so we have to add a '\' before it, just like this '\$'

echo $(expr $n \* $m ) 