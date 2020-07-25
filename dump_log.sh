#!/bin/bash

find -name \*.c > tmp
for line in $(cat tmp)
do 
	file_name=$(basename $line)
	dir="$(dirname $line)/"
	mkdir -p log/${dir}
	git log -p ${line} > log/${dir}/${file_name}.log
	echo "dump ${line} finish!"
done

find -name \*.h > tmp
for line in $(cat tmp)
do 
	file_name=$(basename $line)
	dir="$(dirname $line)/"
	mkdir -p log/${dir}
	git log -p ${line} > log/${dir}/${file_name}.log
	echo "dump ${line} finish!"
done