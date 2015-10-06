#!/bin/bash

SORTFLAGS="-k1rh"
FOLDER=$1
NUMENTRIES=$2

[[ -z $FOLDER ]] && FOLDER="."
[[ -z $NUMENTRIES ]] && NUMENTRIES="15"
df -hT | gawk -e '!/tmpfs/ && !/^Filesystem/ { print $1,"("$7")",$5"/"$3,"("(100 - $6)"%)","free" }'
du -h $FOLDER | sort -k1rh | head -n $NUMENTRIES
