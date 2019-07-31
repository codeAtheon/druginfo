FROM java:8-jdk-alpine
RUN /bin/sh -c "apk add --no-cache bash"
COPY . /usr/app
WORKDIR /usr/app
RUN ls -a
RUN bash ./gradlew build
#COPY build/libs/gs-spring-boot-0.1.0.jar /usr/app/
#WORKDIR /usr/app
EXPOSE 8080
ENTRYPOINT ["java","-jar","build/libs/productsinventory-1.0-SNAPSHOT.jar"]
