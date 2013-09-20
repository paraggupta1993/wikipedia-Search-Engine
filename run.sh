#!/bin/bash
for file in `ls 201001125_split_files`
do
  ./searcher "201001125_split_files/$file" 
done

./merger "./201001125_indexes/"  $2
   
