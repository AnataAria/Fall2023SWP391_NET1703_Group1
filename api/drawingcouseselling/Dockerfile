FROM maven:3.8.5-openjdk-17
LABEL authors="AnataArisa"
WORKDIR /api-backend
ARG API_ENV
COPY . .
RUN mvn clean install -P${API_ENV}
ENTRYPOINT ["java", "-jar", "./target/drawingcouseselling-0.1.jar"]