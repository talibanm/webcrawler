#!/bin/bash
#Filename :createtable.sh

# create file fields1_2 rank title
cut -f1,2 -d"|" newsoneline.txt | sed 's/\ \{1,6\}$//g' > fields1_2.txt
# create file field3 points
cut -f3 -d"|" newsoneline.txt | sed 's/ \w\+//g' | sed 's/ //g' > field3.txt
# create file field5 comments
cut -f5 -d"|" newsoneline.txt | sed 's/ comment[s| ]//g' | sed 's/ //g' > field5.txt
# update field5.txt with 0 instead of discuss
sed 's/discuss/0/g' -i field5.txt
# merge all fields
paste fields1_2.txt field3.txt field5.txt -d "|" > newstablecreated.txt
