cd ../hadoop-3.2.2
cp ../03/python/*.py . 
chmod +x *.py

bin/hdfs dfs -rm -r "lab03/output-python" 
bin/hadoop jar hadoop-streaming-3.2.2.jar \
-input lab03/input \
-output lab03/output-python \
-mapper ASEANDeathCountMapper.py \
-reducer ASEANDeathCountReducer.py

bin/hdfs dfs -cat "lab03/output-python/*"