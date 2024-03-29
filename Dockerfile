FROM maven:3.6.2-jdk-11-slim AS builder
MAINTAINER thiagolocatelli <thiago.locatelli@gmail.com>
COPY . /app/
WORKDIR /app/
RUN mvn package

FROM openjdk:11.0.4-jre
MAINTAINER thiagolocatelli <thiago.locatelli@gmail.com>
EXPOSE 8080
WORKDIR /app/
COPY --from=builder /app/target/spring-cloud-discovery-server.jar /app/spring-cloud-discovery-server.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/spring-cloud-discovery-server.jar"]
