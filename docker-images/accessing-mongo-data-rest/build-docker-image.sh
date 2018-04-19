#!/bin/bash

mkdir tmp

mvn clean package -f ../../microservices/accessing-mongodb-data/pom.xml
cp ../../microservices/accessing-mongodb-data/target/gs-accessing-mongodb-data-rest*.jar ./tmp/

docker build -t lab1/mongo-data-rest .