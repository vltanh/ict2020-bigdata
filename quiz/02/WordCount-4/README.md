# WordCount-4

To produce the most frequent word, we attempted chaining of job: the first job will compute the count of words, and the second job finds the max of these counts.

Specifically, what we did were:
- Run WordCount-3 to get the word counts
- The Mapper takes the output of WordCount-3 `(word, count)` and emit the swapped pair `(count, word)`
- Set the sorter to be decreasing of integer values, so that the first key will be the with the highest count, the corresponding values are words with that same highest count
- Ony 1 reducer will be run and it only processes the first key (keeping check by a boolean flag)

It is important that there is only 1 reducer for the 2nd job, or else each reducer will provide a different maximum count word.

Another approach to this problem is for the reducer of the 1st job to keep track of the maximum count word, and only emit/output in the cleanup stage. This means only 1 MapReduce job, but same as the above problem, only 1 Reducer can be run for this job.

The performance advantage between the 2 approaches described above is debatable.

## Reference

[1] https://docs.cloudera.com/documentation/other/tutorial/CDH5/topics/ht_wordcount3.html

[2] https://stackoverflow.com/questions/38111700/chaining-of-mapreduce-jobs