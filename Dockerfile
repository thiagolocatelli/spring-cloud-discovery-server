FROM maven:alpine

MAINTAINER thiagolocatelli <thiago.locatelli@gmail.com>

EXPOSE 8080
COPY . /opt/spring-cloud-discovery-server/
WORKDIR /opt/spring-cloud-discovery-server/
RUN mvn package
VOLUME /config
WORKDIR /
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar",\
            "/opt/spring-cloud-discovery-server/target/spring-cloud-discovery-server.jar"]
