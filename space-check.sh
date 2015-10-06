#!/bin/bash

SORTFLAGS="-k1rh"
FOLDER=$1
NUMENTRIES=$2

[[ -z $FOLDER ]] && FOLDER="."
[[ -z $NUMENTRIES ]] && NUMENTRIES="15"

du -h $FOLDER | sort -k1rh | head -n $NUMENTRIES
