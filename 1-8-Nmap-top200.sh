#!/bin/bash
echo Nmap Top 200 ports
for word in $(cat ./results/online-IP.txt);do nmap  -Pn -n -vv  -sTU --top-ports 200 --version-intensity 0 -oA ./results/$word/$word-nmapTop200  $word & done
