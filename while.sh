#!/bin/bash
declare -i i=10
while [ $i -le 16 ]
do
        echo $i
        ((i=i+2))
done
