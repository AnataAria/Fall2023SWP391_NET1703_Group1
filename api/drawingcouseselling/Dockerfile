FROM maven:3.8.5-openjdk-17
LABEL authors="AnataArisa"
WORKDIR /api-backend
COPY . .
RUN mvn clean install -Pdev
COPY ./target/drawingcouseselling-0.1.jar .
ENTRYPOINT ["java", "-jar", "drawingcouseselling-0.1.jar"]