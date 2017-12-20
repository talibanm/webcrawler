#!/bin/bash
#Filename :downloadnews.sh
lynx -dump -nolist https://news.ycombinator.com/ > news.txt
lynx -dump -nolist https://news.ycombinator.com/ \
| head -n -6 \
| tail -n +6 \
| tr -d '\n' \
| sed 's/[0-9]\{1,2\}\. \{1,7\}/\n&/g' \
| sed '/^ \{4\}$/d' \
| sed 's/\. \{1,7\}/|/g' \
| sed 's/([a-z]*.[a-z]*.[a-z]*) \{7\}/|/g' \
| sed 's/AMA \{7\}/|/g' \
 > newsoneline.txt 
