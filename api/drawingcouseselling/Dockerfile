FROM maven:3.8.5-openjdk-17
LABEL authors="AnataArisa"
WORKDIR /api-backend
COPY . .
RUN mvn clean install -Pdev
ENTRYPOINT ["java", "-jar", "./target/drawingcouseselling-0.1.jar"]