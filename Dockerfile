# =========================
# Build stage
# =========================
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

# Copy source code vào container
COPY . .

# Build file WAR, bỏ qua test cho nhanh
RUN mvn clean package -DskipTests


# =========================
# Run stage
# =========================
FROM tomcat:9.0-jdk17

# Xóa ứng dụng mặc định của Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR từ build stage sang Tomcat, đổi tên thành ROOT.war
COPY --from=build /app/target/chap2-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat chạy trên port 8080
EXPOSE 8080

# Lệnh start Tomcat
CMD ["catalina.sh", "run"]
