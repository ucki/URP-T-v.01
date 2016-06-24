#!/bin/bash



#Super aggressive nikto
echo Arachni
for word in $(cat ./results/HTTP-IP.txt);do arachni http://$word --output-verbose > ./results/$word/$word-Arachni.txt  & done 
