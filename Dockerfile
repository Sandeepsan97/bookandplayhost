# Step 1: Use the official Tomcat base image with JDK 17
FROM tomcat:9.0-jdk17

# Step 2: Copy your WAR file to Tomcat's webapps directory
COPY bookandplay-website.war /usr/local/tomcat/webapps/your-app.war

# Step 3: Expose Tomcat's default port
EXPOSE 8080

# Step 4: Run Tomcat when the container starts
CMD ["catalina.sh", "run"]
