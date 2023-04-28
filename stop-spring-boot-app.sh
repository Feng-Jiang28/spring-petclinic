#!/bin/bash
echo "Stopping Spring Boot application..."
pkill -f 'java -jar ./deploy/spring-petclinic-3.0.0-SNAPSHOT.jar'
echo "Spring Boot application stopped."
