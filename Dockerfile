# Use the official Tomcat 10.1 image with JDK
FROM tomcat:10.1-jdk17-temurin

# Set the working directory where your app will live inside the container
WORKDIR /usr/local/tomcat/webapps/

# Copy your WAR file (the compiled web app) to Tomcat's webapps folder
COPY target/TripPlanner.war ./ROOT.war

# Expose port 8080 so you can access the app
EXPOSE 8080

# Command to start Tomcat
CMD ["catalina.sh", "run"]
