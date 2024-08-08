alpha_list='0.025 0.05 0.075 0.1 0.125 0.15 0.175 0.2 0.225 0.25 0.275 0.3 0.325 0.35 0.375 0.4 0.425 0.45 0.475 0.5 0.525 0.55 0.575 0.6 0.625 0.65 0.675 0.7 0.725 0.75 0.775 0.8 0.825 0.85 0.875 0.9 0.925 0.95 0.975 1.0 1.025 1.05 1.075 1.1 1.125 1.15 1.175 1.2 1.225 1.25 1.275 1.3 1.325 1.35 1.375 1.4 1.425 1.45 1.475 1.5'
#alpha_list='1.45'
f_list='0. 0.025 0.05 0.075 0.1 0.125 0.15 0.175 0.2 0.225 0.25 0.275 0.3 0.325 0.35 0.375 0.4 0.425 0.45 0.475 0.5 0.525 0.55 0.575 0.6 0.625 0.65 0.675 0.7 0.725 0.75 0.775 0.8 0.825 0.85 0.875 0.9 0.925 0.95 0.975 1.0'
#f_list='0.025 0.075 0.125 0.175 0.225 0.275 0.325 0.375 0.425 0.475 0.525 0.575 0.625 0.675 0.725 0.775 0.825 0.875 0.925 0.975 1.0'
gact_list='1.0'
yieldratio=1.2

for alpha in $alpha_list
do
    for f in $f_list
    do
        for gact in $gact_list
        do
        
            printf "alpha = $alpha, "
            printf "f = $f, "
            printf "Gact = -$gact, "
            printf "yield ratio = $yieldratio. \n"
                 
            python main.py -t $alpha -g $gact -f $f -y $yieldratio
         
        done
    done
done