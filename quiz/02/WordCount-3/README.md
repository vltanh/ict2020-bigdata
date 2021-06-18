# WordCount-3

To remove stopwords from the list of count, we make modifications to WordCount-2 as follows:
- Get the path to the stopwords-list file from command line arguments, load the file and cache it
- Each mapper will load this file (from cache) and will not emit words that belong to this list

## Reference

[1] https://docs.cloudera.com/documentation/other/tutorial/CDH5/topics/ht_wordcount3.html