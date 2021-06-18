cd WordCount-$1

hadoop com.sun.tools.javac.Main WordCount.java
jar cf wordcount.jar WordCount*.class
rm WordCount*.class

cd ..