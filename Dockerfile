# This is Dockerfile for my SpringBoot Application image.

FROM openjdk:8-jdk-alpine

VOLUME /tmp

EXPOSE 8887

ARG JAR_FILE=/target/*.jar

COPY ${JAR_FILE} cicd.jar

RUN echo "I am creating an docker image for my spring boot application"

MAINTAINER "Shahbaz Ikram"

ENTRYPOINT ["java", "-jar", "cicd.jar"]
