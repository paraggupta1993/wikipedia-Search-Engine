#!/bin/bash
g++ -w -O3 csearch.cpp porter.c -o searcher 
g++ -w -O3 merge.cpp -o merger

rm -rf 201001125_split_files
mkdir -p 201001125_split_files
cd 201001125_split_files
split -b 100M --suffix-length=4 ../$1
cd ..

python quantizing.py "201001125_split_files/"

rm -rf 201001125_indexes
mkdir -p 201001125_indexes


