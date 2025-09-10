# Use official Tomcat with JDK 11

FROM tomcat:9.0-jdk11


# Remove default ROOT app (optional, to avoid conflicts)

RUN rm -rf /usr/local/tomcat/webapps/ROOT


# Copy your WAR into Tomcat webapps directory

COPY target/SocialMediaMiniApp.war /usr/local/tomcat/webapps/ROOT.war


# Expose Tomcat port

EXPOSE 8080


# Start Tomcat

CMD ["catalina.sh", "run"]

