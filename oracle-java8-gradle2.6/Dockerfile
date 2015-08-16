#
# Gradle Dockerfile
#
# https://github.com/lukin0110/docker-gradle
#

# Pull base image
# https://github.com/dockerfile/java
FROM airdock/oracle-jdk:1.8
MAINTAINER Maarten Huijsmans <maarten.huijsmans@gmail.com>

# Define working directory.
RUN mkdir -p /data/app
WORKDIR /data/app

RUN apt-get update && apt-get -y install unzip

# Define volume: your local app code directory can be mounted here
VOLUME ["/data/app"]
VOLUME ["/root/.gradle/caches/"]

# Download and install Gradle
RUN \
    cd /usr/local && \
    curl -L https://services.gradle.org/distributions/gradle-2.6-bin.zip -o gradle-2.6-bin.zip && \
    unzip gradle-2.6-bin.zip && \
    rm gradle-2.6-bin.zip

# Export some environment variables
ENV GRADLE_HOME=/usr/local/gradle-2.6
ENV PATH=$PATH:$GRADLE_HOME/bin

# Define default command.
CMD ["bash"]
