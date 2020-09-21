#!/bin/bash
declare -i szam=0
x=""
((szam=1))
x="${szam}"
echo "${szam} ${szam} almafa"
((szam=szam+1))
x="$x ${szam}"
echo "${szam} ${szam} katica"
szam=$((szam+1))
x="$x ${szam}"
echo "${szam} ${szam} kiskacsa"
echo $x
