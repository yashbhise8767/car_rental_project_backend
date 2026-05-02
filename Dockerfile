# Use OpenJDK base image
#FROM openjdk:23-jdk-slim
#FROM eclipse-temurin:17-jdk
#
## Set working directory
#WORKDIR /app
#
## Copy the built jar
##COPY target/Car-Rental-0.0.1-SNAPSHOT.jar app.jar
#
## Expose port
#EXPOSE 8000
#
## Run the jar
#ENTRYPOINT ["java", "-jar", "app.jar"]


FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

RUN ./mvnw clean package -DskipTests

EXPOSE 8000

CMD ["java", "-jar", "target/Car-Rental-0.0.1-SNAPSHOT.jar"]
