#!/bin/bash

# For O2 faster than O3
#module purge

# For Os faster than O2 (also notice the low variability in Os)
module load gcc/7.3.1

# Create our set of flags to cycle through
flags=( "O0"  "O1" "Os" "O2" "O3" )

# Cycle through each of the flag sets
for flagVals in ${flags[@]};
do
    # Say what we are
    echo $flagVals

    # Compile the code
    g++ -$flagVals main.cpp

    # Run it a lot for testing purposes
    for fcount in $(seq 10); do TIMEFORMAT='%3R'; time  ./main.out a 1 ; done

done

