#!/bin/bash
#-d detached mode, -i keep STDIN open, -t allocate a pseudo-tty
#IP of docker.local must be attached to lo interface of the host
docker run --name minjava -p 922:22 --add-host="docker.local:172.16.123.1" -d miszkag/min-java /usr/sbin/sshd -D
