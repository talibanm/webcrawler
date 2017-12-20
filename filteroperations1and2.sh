#!/bin/bash
echo More than 5 words, ordered by points
./filtermorethanwords.sh 5 newstablecreated.txt | ./sortbypoints.sh
echo
echo Less and equal than 5 words, ordered by comments
./filterlessorequalthanwords.sh 5 newstablecreated.txt | ./sortbycomments.sh
