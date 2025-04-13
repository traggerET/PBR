#!/bin/bash

mkdir -p covmap

i=0
for f in tars-cov/cov-in/*; do
    echo "$f"
    afl-showmap -o covmap/cov_$i.txt -- ./tar-distrotech-tar/src/tar -xvf "$f"
    ((i++))
done

echo "done $i"
