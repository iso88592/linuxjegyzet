j=0
declare -a pids
while read LINE; do
     j=$((j+1))
     pontoz $j $LINE & # h�tt�rben ki�rt�kelj�k a feladatot
     pids+=($!)        # hozz�adjuk a PID-j�t a t�mbh�z
done
(sleep 30; kill "${pids[@]}" )&
                       # v�runk 30 m�sodpercig. Ha letelt,
                       # meg�lj�k az �sszes PID-et a t�mbben
killer=$!              # elmentj�k a gyilkost 
wait "${pids[@]}"      # megv�rjuk, am�g az �sszes folyamat
                       # befejez�dik
kill $killer           # meg�lj�k a gyilkost

