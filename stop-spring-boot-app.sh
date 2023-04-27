#!/bin/bash
if pgrep -f "java -jar ./deploy/spring-petclinic-3.0.0-SNAPSHOT.jar" > /dev/null
then
    pkill -f "java -jar ./deploy/spring-petclinic-3.0.0-SNAPSHOT.jar"
fi
