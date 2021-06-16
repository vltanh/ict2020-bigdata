hadoop com.sun.tools.javac.Main ASEANCaseCount.java 
jar cf acc.jar ASEANCaseCount*.class
rm ASEANCaseCount*.class
hdfs dfs -rm -r "lab03/output-java" 
hadoop jar acc.jar ASEANCaseCount lab03/input lab03/output-java 
hdfs dfs -cat "lab03/output-java/*"
