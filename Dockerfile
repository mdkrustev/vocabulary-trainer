#FROM openjdk:17-jdk-slim
#ARG JAR_FILE=target/*.jar

FROM maven:3.9.0-eclipse-temurin-17-alpine as build
COPY . .
#COPY ./target/demo3-0.0.1-SNAPSHOT.jar app.jar
COPY --from=build /target/vocabulary-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]