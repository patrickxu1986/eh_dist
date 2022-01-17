#! /bin/bash

echo "ex_highway docker restart ..."

cd /home/java_app/ex_highway/
docker stop ex-highway10201
rm -f ex_highway-0.0.1-SNAPSHOT.jar
cp tmp/ex_highway-0.0.1-SNAPSHOT.jar .
docker start ex-highway10201