#!/bin/bash

echo Runing nbtscan against online targets

nbtscan -r -v -h -f ./results/online-IP.txt > ./results/netbios-humanreadable.txt
nbtscan -r -f ./results/online-IP.txt > ./results/netbios-overview.txt
nbtscan -r -e  -f ./results/online-IP.txt > ./results/netbios-names.txt
nbtscan -s / -f ./results/online-IP.txt > ./results/netbios-machinereadable.txt
for word in $(cat ./results/online-IP.txt);do nbtscan  -v -h $word >./results/$word/$word-netbios-response.txt  ; done

