#! /bin/bash

for i in `seq 1 10000`
do
    TEXT="Vires in numeris. $i" 
    SHA256=`echo -n "$TEXT" | shasum -a 256`
    if [[ $SHA256 == 00* ]]
    then  
        echo -n "$i : $TEXT : $SHA256"
        break;
    fi
done
