#!/usr/bin/env bash
docker run -d -it -p 10201:10201 -v /home:/home --name ex-highway10201 xcpxcp198608/java8 /bin/bash ./home/java_app/ex_highway/start.sh