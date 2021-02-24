FROM alpine:latest
RUN apk --update add openjdk8-jre
COPY target/graphql-generator-demo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java", "-Djava.security.egd=/dev/./urandom","-jar","app.jar"]