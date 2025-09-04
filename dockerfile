# Dùng Tomcat 9 + JDK17 (hợp với code của bạn)
FROM tomcat:9.0-jdk17

# Xóa các app mặc định trong Tomcat (ROOT, docs, examples)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR của bạn vào Tomcat (đặt tên ROOT.war để chạy ở "/")
COPY target/chap2.war /usr/local/tomcat/webapps/ROOT.war

# Mặc định Tomcat sẽ chạy trên port 8080
EXPOSE 8080

# Lệnh start Tomcat
CMD ["catalina.sh", "run"]
