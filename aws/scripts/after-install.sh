#!/bin/bash
set -xe

# Create the 'tomcat' user and group if they do not already exist
if ! id -u tomcat > /dev/null 2>&1; then
    sudo groupadd tomcat
    sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
fi

# Copy war file from S3 bucket to tomcat webapp folder
aws s3 cp s3://petclinic-webappdeploymentbucket-17b0rrpj6ceak/spring-petclinic-3.0.0-SNAPSHOT.war /opt/tomcat/webapps/spring-petclinic-3.0.0-SNAPSHOT.war

# Ensure the ownership permissions are correct.
chown -R tomcat:tomcat /opt/tomcat/webapps/
