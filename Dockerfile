#
# Gradle Dockerfile
#
# https://github.com/lukin0110/docker-gradle
#

# Pull base image.
FROM java:8-jre
MAINTAINER Maarten Huijsmans <maarten.huijsmans@gmail.com>

# Install Java
RUN apt-get update && apt-get -y install unzip openjdk-8-jdk

# Download and install Gradle
RUN mkdir -p /tmpbuild/gradle
WORKDIR /tmpbuild/gradle
# Download, extract & move
RUN curl -L https://services.gradle.org/distributions/gradle-2.5-bin.zip -o gradle-2.5-bin.zip && \
    unzip gradle-2.5-bin.zip && \
    mv gradle-2.5 /usr/local

WORKDIR /root
RUN rm -Rf /tmpbuild/

# Export some environment variables
ENV GRADLE_HOME=/usr/local/gradle-2.5
ENV PATH=$PATH:$GRADLE_HOME/bin JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# Define default command.
CMD ["bash"]
