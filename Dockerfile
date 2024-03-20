FROM openjdk:8
COPY target/VProfile-1.0.war .
ENTRYPOINT ["java", "-jar", "VProfile-1.0.war"]
