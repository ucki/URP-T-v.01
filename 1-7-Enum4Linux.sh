#!/bin/bash


echo Enum4Linux, may drop some errors


for word in $(cat ./results/SMB-IP.txt);do enum4linux -a $word >./results/$word/$word-enum4linux.txt  & done 

