#!/bin/bash
echo Nmap System Ports
for word in $(cat ./results/online-IP.txt);do nmap  -Pn -n -vv  -sN -p1-1023  -oA ./results/$word/$word-nmapSystemPortsTCPNUL  $word & done
