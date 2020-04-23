#!/bin/bash

$HADOOP_HOME/sbin/start-dfs.sh
$HADOOP_HOME/sbin/start-yarn.sh

jps -lm

hdfs dfsadmin -report

#hdfs dfs -mkdir -p /apps/spark
zip /usr/local/spark/jars/spark-jars.zip /usr/local/spark/jars/*
#hadoop fs -put /usr/local/spark/jars/spark-jars.zip  /apps/spark

hadoop fs -mkdir /sparklog
$SPARK_HOME/sbin/start-history-server.sh
#$SPARK_HOME/sbin/start-all.sh

scala -version
jps -lm



