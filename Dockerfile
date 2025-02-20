FROM maven:3.9.9-eclipse-temurin-17
WORKDIR /app
RUN mkdir -p /app/src
COPY pom.xml .
COPY src ./src
RUN mvn clean package
CMD ["java", "-jar", "/app/target/java-maven-app-1.1.0-SNAPSHOT.jar"]
