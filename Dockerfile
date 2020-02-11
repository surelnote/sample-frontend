FROM openjdk:8u212-jdk
COPY target/*SNAPSHOT.war app.war
EXPOSE 8080
ENTRYPOINT ["java","-Xmx400M","-Djava.security.egd=file:/dev/./urandom","-jar","/app.war","--spring.profiles.active=docker"]