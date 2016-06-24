#!/bin/bash

echo "Searching Dualhomed Systems, gets some basic SSL and NEtbios infos also"

nmap -PN -p445,443 --script duplicates,nbstat,ssl-cert -oA ./results/nmapDualhomed -iL ./results/online-IP.txt



