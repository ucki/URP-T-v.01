#!/bin/bash


echo Checking the OS and Version Intensity 7
for word in $(cat ./results/online-IP.txt); do nmap  -Pn -n -vv  -sTU -p "$(< ./results/$word/$word-totalPortlist-inline.txt)" --version-intensity 7 -O -oA ./results/$word/$word-nmapOScheck-VersionIntensity7  $word & done






