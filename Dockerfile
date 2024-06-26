FROM openjdk:17
RUN mkdir -p "/container-dir/logs" && chmod -R 777 "/container-dir/logs"
WORKDIR /container-dir
COPY ./build/libs/spring-docker-app.jar /container-dir
#Informing docker to open the port 8282 to listen our spring application which is running on port 8282
EXPOSE 8282
CMD ["java","-jar","spring-docker-app.jar"]

