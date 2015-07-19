Gradle Dockerfile
=================

This repository contains **Dockerfile** of [Gradle](https://www.gradle.org/) for [Docker](https://www.docker.com/)'s 
[automated build](https://registry.hub.docker.com/u/lukin0110/gradle/) published to the public 
[Docker Hub Registry](https://registry.hub.docker.com/). Gradle Container to develop & build Java/Groovy projects.

Installed packages:

* [OpenJDK 8](http://openjdk.java.net/projects/jdk8/)
* [Gradle 2.5](https://docs.gradle.org/2.5-rc-1/release-notes)

## Base Docker Image

* [java:8-jre](https://registry.hub.docker.com/_/java/)

## Pull image
```
docker pull lukin0110/gradle
```

## Run
```
docker run -it --rm lukin0110/gradle
```

## Build
```
docker build -t lukin0110/gradle .
```
