#!/bin/bash
if [ -f alma.txt ]
then
    echo "Van alma.txt!"
else
    echo "Nincs alma.txt!"
fi
echo "Adj meg egy sz�mot!"
read szam
((szam=szam%2))
if [ $szam -eq 0 ]
then
    echo "A sz�m p�ros!"
else
    echo "A sz�m p�ratlan!"
fi
