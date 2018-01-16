#!/bin/bash



tar xzvf sparkML.tar

cd sparkML

export PATH=/usr/local/spark/bin:$PATH
export PATH=/usr/local/jdk1.8.0_40/bin:$PATH

ant


spark-submit \
--class ml.task1 \
--master yarn \
--num-executors 3 \
sparkML.jar \
hdfs://soit-hdp-pro-1.ucc.usyd.edu.au:8020/share/genedata/test/ \
hdfs://soit-hdp-pro-1.ucc.usyd.edu.au:8020/share/genedata/test/ \
hdfs://soit-hdp-pro-1.ucc.usyd.edu.au:8020/user/szha5691/assignment3/




spark-submit \
--class ml.task2 \
--master yarn \
--num-executors 3 \
sparkML.jar \
hdfs://soit-hdp-pro-1.ucc.usyd.edu.au:8020/share/genedata/test/ \
hdfs://soit-hdp-pro-1.ucc.usyd.edu.au:8020/share/genedata/test/ \
hdfs://soit-hdp-pro-1.ucc.usyd.edu.au:8020/user/szha5691/assignment3/






spark-submit \
--class ml.task3 \
--master yarn \
--num-executors 3 \
sparkML.jar \
hdfs://soit-hdp-pro-1.ucc.usyd.edu.au:8020//user/szha5691/assignment3/task2/ \
hdfs://soit-hdp-pro-1.ucc.usyd.edu.au:8020/user/szha5691/assignment3/

