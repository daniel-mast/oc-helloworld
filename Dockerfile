FROM maven:3.5.4-jdk-8 as builder

COPY src /usr/src/myapp/src
COPY pom.xml /usr/src/myapp
RUN mvn -f /usr/src/myapp/pom.xml clean package


FROM tomcat:8.5

RUN addgroup tomcatusers && adduser -D tomcat && adduser tomcat tomcatusers
RUN chown -R tomcat:tomcatusers .
USER tomcat

COPY --from=builder /usr/src/myapp/target/*.war /usr/local/tomcat/webapps/helloworld.war