#!/usr/bin/env bash
PID=$(jps | grep 'war' | awk '{print $1}')
if [ -z "$PID" ]; then
     nohup java -jar ./target/mvn-0.0.2-SNAPSHOT.jar  &>log.out &
  else
    kill -9 "$PID"
    nohup java -jar ./target/mvn-0.0.2-SNAPSHOT.jar  &>log.out &
fi

