#!/usr/bin/env bash

cd openjdk8-gradle2.5
docker build -t lukin0110/gradle:openjdk8-gradle2.5 .

cd ../openjdk8-gradle2.6
docker build -t lukin0110/gradle:openjdk8-gradle2.6 .

cd ../oracle-java8-gradle2.5
docker build -t lukin0110/gradle:oracle-java8-gradle2.5 .

cd ../oracle-java8-gradle2.6
docker build -t lukin0110/gradle:oracle-java8-gradle2.6 .

