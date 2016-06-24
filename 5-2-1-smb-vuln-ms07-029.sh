#!/bin/bash

echo "Searching MS07-029"

nmap --script smb-vuln-ms07-029.nse -p445 -oA ./results/nmapMS07-029 -iL ./results/online-IP.txt

