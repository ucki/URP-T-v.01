#!/bin/bash

echo SNMP List
cat ./results/nmapUDP161.gnmap| grep 161/open |cut -d ":" -f 2  |cut -d " " -f 2 >./results/UDP161-IP.txt

echo HTTP IP list
cat ./results/nmaphttp.gnmap| grep open |cut -d ":" -f 2  |cut -d " " -f 2 >./results/HTTP-IP.txt

echo FTP IP list
cat ./results/nmapftp.gnmap| grep open |cut -d ":" -f 2  |cut -d " " -f 2 >./results/FTP-IP.txt

echo SMB/CIFS IP list
cat ./results/nmapsmb.gnmap| grep open |cut -d ":" -f 2  |cut -d " " -f 2 >./results/SMB-IP.txt

echo DNS List
cat ./results/nmapdns.gnmap| grep 53/open |cut -d ":" -f 2  |cut -d " " -f 2 >./results/DNS-IP.txt
