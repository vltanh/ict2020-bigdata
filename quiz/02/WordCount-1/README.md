# WordCount-1

This is the most basic, the process can be roughly put as:
- Hadoop takes in a folder of text files, divides all the lines in those files to the Mapper workers;
- Each Mapper is implemented a `map` method, which:
    - Takes in a line (along with the offset number, but it is not used)
    - Splits the line into words
    - Emits each word as `(word, 1)`
- Hadoop gathers the result, sorts the list of emit (key, value) pairs by the key, groups the values with the same key, and divide the keys to the Reducer workers;
- Each Reducer is implemented a `reduce` method, which:
    - Takes a key (the word) and the list of values correspond to that key
    - Sums up all the values, this is the count of the word
    - Emit as `(word, count)`
- Hadoop gathers the results and output.

## Reference

[1] https://docs.cloudera.com/documentation/other/tutorial/CDH5/topics/ht_wordcount1.html