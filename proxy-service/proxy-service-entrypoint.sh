#!/bin/sh

while ! nc -z config-server 8088 ; do
    echo "Waiting for upcoming Config Server"
    sleep 3
done

while ! nc -z discovery-service 8061 ; do
    echo "Waiting for upcoming discovery-service"
    sleep 3
done

while ! nc -z employee-service 8090 ; do
    echo "Waiting for upcoming employee-service
    sleep 3
done

while ! nc -z department-service 8091 ; do
    echo "Waiting for upcoming department-service
    sleep 3
done

while ! nc -z organization-service 8092 ; do
    echo "Waiting for upcoming organization-service
    sleep 3
done

while ! nc -z gateway-service 8060 ; do
    echo "Waiting for upcoming gateway-service
    sleep 3
done

java -jar /opt/lib/proxy-service-0.0.1-SNAPSHOT.jar
