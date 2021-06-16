#!/bin/bash

cd WordCount-$1

hadoop com.sun.tools.javac.Main WordCount.java
jar cf wordcount.jar WordCount*.class
rm WordCount*.class

hdfs dfs -rm -r $3

if [ $# -eq 4 ]
then
    hadoop jar wordcount.jar WordCount $2 $3 -skip $4
elif [ $# -eq 3 ]
then
    hadoop jar wordcount.jar WordCount $2 $3
else
    echo "Usage: sh wc.sh <version> <input> <output> (<stopwords>)"
fi