#!/bin/bash



#Super aggressive nikto
echo Arachni
for word in $(cat ./results/HTTP-IP.txt);do arachni http://$word --output-verbose --report-save-path=/results/$word/$word-Arachni.afr  & done 

