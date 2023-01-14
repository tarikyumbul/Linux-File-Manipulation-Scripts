#!/bin/bash

filename=$1
n=0
while read line
do
# reading each lines
    # generate "*" from first to last steps.
    for n in $(seq "$line")
    do
        echo -n "*"
    done
        #clearly understood with "echo".
        echo
    n=$((n+1))
done < $filename
