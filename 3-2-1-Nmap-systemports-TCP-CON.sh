#!/bin/bash
echo Nmap System Ports
for word in $(cat ./results/online-IP.txt);do nmap  -Pn -n -vv  -sT -p1-1023  -oA ./results/$word/$word-nmapSystemPortsTCPCON  $word & done
