# Usa a imagem oficial do OpenJDK 21
FROM eclipse-temurin:21-jdk

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo .jar para dentro do container
COPY cadastroclientesapi-0.0.1-SNAPSHOT.jar app.jar

# 5️⃣ Define o comando para rodar o Spring Boot
CMD ["java", "-jar", "app.jar"]