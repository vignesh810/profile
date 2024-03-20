FROM openjdk:8
RUN mkdir /opt/app/vprofile
WORKDIR /opt/app/vprofile
COPY target/VProfile-1.0.war .
ENTRYPOINT ["java", "-jar", "VProfile-1.0.war"]