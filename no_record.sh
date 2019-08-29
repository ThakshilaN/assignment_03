#!/bin/bash

#awk -F '[| ]' '{a[$1]++}END{for(i in a){print i, a[i]}}' OPTPF.csv

#awk -F '[| ]' 'BEGIN {OFS=","} { print $1, $2, $4, $9}' OPTPF.csv

awk -F '[| ]' '{if (x=15000){($9 >= x);print }}' | wc -l OPTPF.csv


