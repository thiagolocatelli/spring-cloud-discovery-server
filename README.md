## spring-cloud-discovery-server

Simple docker container running Netflix Eureka as discovery service. Spring Boot vesion 2.1.9-RELEASE. 

default port: 8080

```shell script
docker run thiagolocatelli/spring-cloud-discovery-server
```

map to different port

```shell script
docker run -e -p 8888:8080 thiagolocatelli/spring-cloud-discovery-server
```