FROM openjdk:8
EXPOSE 8080
ADD target/target\LMS-0.0.1-SNAPSHOT.war target\LMS-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java","-jar","/target\LMS-0.0.1-SNAPSHOT.war"]