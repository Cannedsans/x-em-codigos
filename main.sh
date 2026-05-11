for i in {0..9}; do
    for j in {0..9}; do
        if [[ "$i" -eq "$j" || $((i + j)) -eq 9 ]]; then
            echo -n "*"
        else 
            echo -n " "
        fi
    done
    echo " "
done 