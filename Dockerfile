FROM openjdk:17
WORKDIR /container-dir
COPY ./build/libs/spring-docker-app.jar /container-dir
EXPOSE 8282
CMD ["java","-jar","spring-docker-app.jar"]

