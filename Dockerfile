FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/app.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Dserver.env=AWS_STAGING -Dserver.port=9095 -Djava.security.egd=file:/dev/./urandom -jar /app.jar"]
