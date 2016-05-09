#!/bin/bash



echo Making a IP list
nmap -sL $@ >./results/nmapiplist.txt
cat ./results/nmapiplist.txt |grep "Nmap sc"|cut -d " " -f 5 >./results/IP.txt

echo Searching online systems
nmap -PR -sP -PM -PE -PS -R $@ |grep "Host is up" -B 1 |grep "Nmap scan" |cut -d " " -f 5 >./results/online-IP.txt


