#!/usr/bin/env bash
# shellcheck disable=SC2009
PID=$(ps -ef | grep 'mvn-.*.jar' | grep -v grep | awk '{print $1}')
if [ -z "$PID" ]; then
     echo "无相关进程"
     nohup java -jar target/mvn-0.0.2-SNAPSHOT.jar  &>log.out &
  else
    kill -9 "$PID"
    echo "杀死进程 - $PID"
    nohup java -jar target/mvn-0.0.2-SNAPSHOT.jar  &>log.out &
fi

