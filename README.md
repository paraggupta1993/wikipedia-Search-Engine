Wikipedia-Search-Engine
=======================

Documentation:
-------------
Wikipedia Search Engine gives you most relevant wikipedia documents for your search. It uses concepts of multi-level indices for faster retrival. The queries are 'AND' supported. The different fields are weigted exponentially and the pages are based on weighted-normalized ranking.

Supports:
---------
1. English Language.
2. Field Queries on 'Title', 'Category', 'Infobox', 'Outlinks', 'Text'.


Steps For Producing Index:
--------------------------

1. Get Wikipedia XML Dump from [here](http://en.wikipedia.org/wiki/Wikipedia:Database_download).
2. Produce index using the following commands : 
```
  chmod +x install.sh run.sh
  ./install.sh dump.xml
  ./run.sh <index-file-name>
```
3. Compile the query engine : 
``` 
    g++ query.cpp porter.c -o query
```
4. Start query engine with : { secondary/primary index will be created }
```
    ./query <secondary_index_name> <primary_index_name> <index_file>
```
5. Shoot queries in the form 
```
query>  T:Sachin X: potter
```
