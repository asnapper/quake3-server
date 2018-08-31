#!/bin/bash

mkdir -p baseq3

for i in $(seq 0 8); do
    curl -o "baseq3/pak$i.pk3" "https://raw.githubusercontent.com/nrempel/q3-server/master/baseq3/pak$i.pk3"
done