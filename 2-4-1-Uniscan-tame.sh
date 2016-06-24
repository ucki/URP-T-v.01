#!/bin/bash




echo "Uniscan without stress test"
for word in $(cat ./results/HTTP-IP.txt);do uniscan -u http://$word -bqwedsg >./results/$word/$word-uniscan-tame.txt  ; done 
