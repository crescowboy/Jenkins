# Usa la imagen base de OpenJDK
FROM openjdk:11-jdk-slim

# Define el directorio de trabajo
WORKDIR /app

# Copia el archivo JAR de tu aplicación al contenedor
COPY target/spring-boot-demo-0.0.1-SNAPSHOT.jar /app/spring-boot-demo.jar

# Expone el puerto en el que la aplicación escuchará
EXPOSE 8080

# Define el comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "spring-boot-demo.jar"]
