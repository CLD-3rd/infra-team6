FROM openjdk:17

COPY ./target/fortune-0.0.1-SNAPSHOT.jar fortune.jar
COPY /src/main/resources/application.properties /application.properties
COPY /src/main/resources/admin.properties /admin.properties

ENTRYPOINT ["java", "-jar", "/fortune.jar"]
