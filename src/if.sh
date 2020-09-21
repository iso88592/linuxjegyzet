#!/bin/bash
if [ -f alma.txt ]
then
    echo "Van alma.txt!"
else
    echo "Nincs alma.txt!"
fi
echo "Adj meg egy számot!"
read szam
((szam=szam%2))
if [ $szam -eq 0 ]
then
    echo "A szám páros!"
else
    echo "A szám páratlan!"
fi
