FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
RUN echo building bg graphql-demo start
COPY ${JAR_FILE} app.jar

# environment variable with default value
ENV SPRING_PROFILE=dev



ENTRYPOINT ["java","-Dspring.profiles.active=${SPRING_PROFILE}","-jar","/app.jar"]