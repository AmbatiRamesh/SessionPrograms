
#!/bin/bash -x

echo "Enter the no to calculate factors :"
read N

declare -a arr

function getPrimeFactor(){
        for (( i=2; i<N; i++ ))
        do
                        while [ $(($N%$i)) -eq 0 ];
                        do
                                arr+=("$i")
                                N=$(($N/$i))
                        done
                        arr+=("$N")
        done
        echo "${arr[@]}"
}

getPrimeFactor $N
