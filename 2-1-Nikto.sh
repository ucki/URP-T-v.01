#!/bin/bash



#Super aggressive nikto
echo Agressive Nikto
for word in $(cat ./results/HTTP-IP.txt);do nikto -h $word >./results/$word/$word-NiktoScan.txt  & done 

