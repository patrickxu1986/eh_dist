#!/usr/bin/env bash
cd /home/java_app/ex_highway/
nohup java -jar ex_highway-0.0.1-SNAPSHOT.jar > /dev/null 2&>1 &
tail -f /dev/null