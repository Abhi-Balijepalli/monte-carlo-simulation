#!/bin/bash
for t in 1 2 4 6
do
    echo NUMT = $t
    # number of trials
    for s in 200 400 800 1600 3200 6400
    do
        g++ -DNUMT=$t -DNUMTRIALS=$s monte_carlo.cpp -o monte_carlo -lm -fopenmp
        ./monte_carlo
    done
done