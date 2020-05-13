FROM  java:8-jre

MAINTAINER lsestrimski
EXPOSE 8080 8081

RUN mkdir /var/merge-helper-service
RUN chmod +755 /var/merge-helper-service

COPY target/merge-helper-service-1.0-SNAPSHOT.jar /var/merge-helper-service/
COPY src/main/config/dropwizard-service-config.yml /var/merge-helper-service/config/


CMD java -jar /var/merge-helper-service/merge-helper-service-1.0-SNAPSHOT.jar server /var/merge-helper-service/config/dropwizard-service-config.yml
