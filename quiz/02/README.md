# WordCount using Apache Hadoop

## Info

|Name|Student ID|Mail|
|---|---|---|
|Vũ Lê Thế Anh|20C13002|anh.vu2020@ict.jvn.edu.vn|

## Description

There are 4 versions of the WordCount implemented here:
1. Count frequency of each word on raw documents;
2. Same as 1 but case-insensitive;
3. Same as 2 but with exclusion of stopwords (listed in a text file);
4. Same as 3 but only output the most frequent word.

Each version will have a Java source code and a built JAR file (step to build the file can be found below). There is also a short description in the form of markdown.

## How to use

### (Optional) Build JAR files

To create JAR files, run
```
bash build.sh <version>
```
where:
- `<version>`: version number of the WordCount program (1-4)

For example, to build the JAR files for the 1st version of the WordCount program, run
```
bash build.sh 1
```

### (Optional) Setup

To setup the data for a sample run, run
```
bash setup.sh <parent>
```
where:
- `parent`: name of the parent directory on HFS

For example, running
```
bash setup.sh /user/vltanh/quiz02
```
will create a directory called `/user/vltanh/quiz02` in your HDFS and put all the necessary data for a sample run.

### Run WordCount program

To run a JAR file, run
```
bash run.sh <version> <path_input> <path_output> (<path_stopwords>)
```
where:
- `<version>`: version number of the WordCount program (1-4)
- `<path_input>`: path to input directory (on HDFS)
- `<path_output>`: path to output directory (on HDFS, must not exist, will b e created on run)
- `<path_stopwords>`: path to the file containing the list of stopwords (on HDFS; only for the 3rd and 4th version)

For example, running
```
bash run.sh 2 /user/vltanh/quiz02/input /user/vltanh/quiz02/output-1
```
or
```
bash run.sh 4 /user/vltanh/quiz02/input /user/vltanh/quiz02/output-1 /user/vltanh/quiz02/stop_words.txt
```
You can check the result by running, for example,
```
hdfs dfs -cat "/user/vltanh/quiz02/output-1/*"
```

**Note:** For the 4th version, since it runs 2 separate job, the output is located in the `max` folder (created in your output directory), the `count` folder contains the word count (of version 3).

## Reference

[1] https://docs.cloudera.com/documentation/other/tutorial/CDH5/topics/ht_overview.html

[2] https://stackoverflow.com/questions/38111700/chaining-of-mapreduce-jobs