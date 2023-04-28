#!/bin/bash
echo "Stopping Spring Boot application..."
pkill -f 'java -jar /opt/spring-petclinic/spring-petclinic-3.0.0-SNAPSHOT.jar'
echo "Spring Boot application stopped."
