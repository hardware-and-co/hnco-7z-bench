#!/bin/bash
set -e
SELF=`readlink -f $0`
DIR=`dirname $SELF`
if [ "$1" == "" ]; then
	NB_THREADS=$((`lscpu | grep "^CPU(s):" | sed -E "s/.* ([0-9]+)/\1/g"`))
else
	NB_THREADS=$1
fi

cd $DIR
/bin/time -p 7z a -m0=lzma2 out.7z data/
cd -
