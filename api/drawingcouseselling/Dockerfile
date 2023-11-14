FROM maven:3.8.5-openjdk-17
LABEL authors="AnataArisa"
WORKDIR /api-backend
ARG API_ENV
COPY . .
ENV SPRING_PROFILES_ACTIVE=${API_ENV}
RUN mvn clean install
ENTRYPOINT ["java", "-jar", "./target/drawingcouseselling-0.1.jar"]