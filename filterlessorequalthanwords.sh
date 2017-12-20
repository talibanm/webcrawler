#!/bin/bash
count=$1
file=$2
awk "{if (NF <= $count) print}" $file
