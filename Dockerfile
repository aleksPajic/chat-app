FROM maven:3.8.4-openjdk-11 AS build
RUN mkdir -p workspace
WORKDIR workspace
COPY backend/pom.xml /workspace/backend
COPY backend/src /workspace/backend/src
COPY frontend /workspace/frontend
RUN mvn -f pom.xml clean install -DskipTests=true

FROM openjdk:11.0.9-jdk
COPY --from=build /workspace/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]