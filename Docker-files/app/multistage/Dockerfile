FROM openjdk:11 AS BUILD_IMAGE
RUN apt update && apt install maven -y
RUN git clone https://github.com/ItsNotRohit02/Jenkins-CI-CD-Pipeline.git
RUN cd Jenkins-CI-CD-Pipeline && git checkout jenkins-cd && mvn install

FROM tomcat:9-jre11

RUN rm -rf /usr/local/tomcat/webapps/*

COPY --from=BUILD_IMAGE Jenkins-CI-CD-Pipeline/target/Sample-v1.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
