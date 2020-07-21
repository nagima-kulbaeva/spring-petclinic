FROM openjdk:8-jdk-alpine
COPY app/ /app
WORKDIR /app
RUN ./mvnw package && mv target/*.jar app.jar
EXPOSE 8080
CMD ["java","-jar","app.jar"]

