FROM java:8-jdk-alpine
RUN /bin/sh -c "apk add --no-cache bash"
COPY target/productsinventory-1.0-SNAPSHOT.jar /usr/app
WORKDIR /usr/app
RUN ls -a
RUN bash ./gradlew build
#COPY build/libs/gs-spring-boot-0.1.0.jar /usr/app/
#WORKDIR /usr/app
EXPOSE 8080
ENTRYPOINT ["java","-jar","productsinventory-1.0-SNAPSHOT.jar"]
