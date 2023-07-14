FROM ubuntu:latest as build
RUN apt-get update
RUN apt-get install openjdk-17-jdk -y
FROM openjdk:17-jdk-slim
ARG JAR_FILE=target/*.jar
COPY ./target/vocabulary-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]