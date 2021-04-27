FROM openjdk:8-jdk-alpine
MAINTAINER francisco.junior
COPY target/blog-0.0.1-SNAPSHOT.jar blog-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/blog-0.0.1-SNAPSHOT.jar"]