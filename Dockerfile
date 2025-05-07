FROM openjdk:17-jdk-slim

WORKDIR /app

# ✅ Use the correct JAR name from target/
COPY target/demo-for-k8-deploymnet.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
