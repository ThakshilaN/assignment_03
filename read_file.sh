#!/bin/bash

  cat output.csv|while read line
  do

 
read  line < <(echo $line) 
    echo  "$line"

done
awk '{printf "%s\n", NR,$0}' output.csv 
perl -anle '$x+=$_ for(@F);print $x;$x=0;' output.csv

 
awk '{m=$1;for(i=1;i<=NF;i++)if($i<m)m=$i;print "Min of line",NR": ",m}' output.csv

awk '{mx=$1;for(i=1;i<=NF;i++)if($i>mx)mx=$i;print "Max of line",NR": ",mx}' output.csv



