#!/bin/bash

#Folder
echo Folder per host
for word in $(cat ./results/online-IP.txt);do mkdir ./results/$word  ;
echo -n"">>./results/$word/$word-notes.txt; 
 done

#basic nmap scans 
echo Udp 161 Scan
nmap  -Pn -n -vv -sU -p U:161 -oA ./results/nmapUDP161 -iL ./results/online-IP.txt &
echo HTTP scan
nmap  -Pn -n -vv -p http* -oA ./results/nmaphttp -iL ./results/online-IP.txt &
echo FTP scan
nmap  -Pn -n -vv -p ftp* -oA ./results/nmapftp -iL ./results/online-IP.txt &
echo DNS scan
nmap  -Pn -n -vv -p 53 -oA ./results/nmapdns -iL ./results/online-IP.txt &

echo SMB/CIFS scan
nmap  -Pn -n -vv -sU -sS -p 137-139,445 -oA ./results/nmapsmb -iL ./results/online-IP.txt &



