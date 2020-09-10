#!/bin/bash
set -e
DIR=`dirname $0`
if [ "$1" == "" ]; then
	NB_THREADS=$((`lscpu | grep "^CPU(s):" | sed -E "s/.* ([0-9]+)/\1/g"`))
else
	NB_THREADS=$1
fi
cd $DIR

time 7z a -m0=lzma2 out.7z data/
