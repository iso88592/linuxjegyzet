j=0
declare -a pids
while read LINE; do
     j=$((j+1))
     pontoz $j $LINE & # háttérben kiértékeljük a feladatot
     pids+=($!)        # hozzáadjuk a PID-jét a tömbhöz
done
(sleep 30; kill "${pids[@]}" )&
                       # várunk 30 másodpercig. Ha letelt,
                       # megöljük az összes PID-et a tömbben
killer=$!              # elmentjük a gyilkost 
wait "${pids[@]}"      # megvárjuk, amíg az összes folyamat
                       # befejezõdik
kill $killer           # megöljük a gyilkost

