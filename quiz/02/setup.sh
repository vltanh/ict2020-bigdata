hdfs dfs -mkdir -p $1
hdfs dfs -put data/input $1
hdfs dfs -put data/stop_words.txt $1