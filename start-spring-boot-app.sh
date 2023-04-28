#!/bin/bash
echo "Starting Spring Boot application..."
nohup java -jar /opt/spring-petclinic/spring-petclinic-3.0.0-SNAPSHOT.jar > /opt/spring-petclinic/spring-boot.log 2>&1 &
echo "Spring Boot application started."
