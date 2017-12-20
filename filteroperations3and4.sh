#!/bin/bash
echo Top 5 rank 
cat newstablecreated.txt | ./sortbyrank.sh | ./filtertoprank.sh 5
echo
echo Bottom 5 rank 
cat newstablecreated.txt | ./sortbyrank.sh | ./filterbottomrank.sh 5
