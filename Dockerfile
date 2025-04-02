# Usa a imagem oficial do OpenJDK 21
FROM openjdk:21-jdk-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o JAR gerado para dentro do container
COPY cadastroclientesapi-0.0.1-SNAPSHOT.jar app.jar

# Expõe a porta 8081 para acesso externo
EXPOSE 8081

# Comando para rodar a API
ENTRYPOINT ["java", "-jar", "app.jar"]
