# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine
# copy DEMO JAR into image
#Expose port
EXPOSE 8080
COPY demo/target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]
