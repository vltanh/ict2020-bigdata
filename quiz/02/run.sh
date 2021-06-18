if [ $# -eq 4 ]
then
    hadoop jar WordCount-$1/wordcount.jar WordCount $2 $3 -skip $4
elif [ $# -eq 3 ]
then
    hadoop jar WordCount-$1/wordcount.jar WordCount $2 $3
else
    echo "Wrong number of arguments!"
fi