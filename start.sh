#!/usr/bin/env bash
# shellcheck disable=SC2009
# shellcheck disable=SC2034
JENKINS_NODE_COOKIE='dontkillme'
PID=$(jps | grep 'mvn-.*.jar' | awk '{print $1}')
if [ -z "$PID" ]; then
     echo "无相关进程"
     nohup  /usr/bin/java -jar target/mvn-0.0.2-SNAPSHOT.jar  &>log.out &
     jps
  else
    kill -9 "$PID"
    echo "杀死进程 - $PID"
    nohup  /usr/bin/java -jar target/mvn-0.0.2-SNAPSHOT.jar  &>log.out &
    jps
fi

