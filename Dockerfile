FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY . .

RUN ./gradlew build

EXPOSE 8081

CMD ["java", "-jar", "build/libs/testci-0.0.1-SNAPSHOT.jar"]
