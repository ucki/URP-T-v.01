#!/bin/bash

echo "Running the ALL nmap nse scripts"

for word in $(cat ./results/online-IP.txt);do nmap  -Pn -n -vv  -sSU -p "$(< ./results/Overview-totalPortlist-inline.txt)" -sV --script all -oA ./results/$word/$word-nmapALLScripts  $word & done
 



