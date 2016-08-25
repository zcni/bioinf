#!/bin/bash
# test the function of split
if (($# != 2));then
     echo "Usage: sh split.sh <input> <output_prefix>"
     exit 1
fi
input="$1"
output="$2"
split -l 10 $input $output
exit 0
