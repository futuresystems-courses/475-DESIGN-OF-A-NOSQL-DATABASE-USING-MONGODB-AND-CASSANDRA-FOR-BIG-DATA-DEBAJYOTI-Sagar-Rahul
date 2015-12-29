#!/bin/bash
JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64/jre
I590TwitterDataset=/home/mongodb/Downloads/I590-TwitterProjectCode

cd $TwitterDataset

for i in $(ls lib |grep jar); do
	CLASSPATH=$CLASSPATH:$TwitterDataset/lib/$i
done
for j in $(ls build/lib |grep jar); do
	CLASSPATH=$CLASSPATH:$TwitterDataset/build/lib/$j
done
echo $CLASSPATH

while [ "$*" != "" ]
do
  args=$args' '$1
  shift
done
java -classpath $CLASSPATH $args
