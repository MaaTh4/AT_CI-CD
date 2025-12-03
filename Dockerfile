FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY target/AT_CICD-1.0-SNAPSHOT.jar app.jar

ENTRYPOINT ["sh", "-c", "java -cp app.jar org.example.Main && tail -f /dev/null"]
