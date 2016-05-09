#!/bin/bash
echo Nmap Dynamic Ports
for word in $(cat ./results/online-IP.txt);do nmap  -Pn -n -vv  -sU -49152-65535  -oA ./results/$word/$word-nmapDynamicPorts  $word & done
