#!/bin/bash

echo "Running the default nmap nse scripts"

nmap -sV -sC -oA ./results/nmapSafeScripts -iL ./results/online-IP.txt



