FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install git
RUN apt-get install default-jdk
RUN apt-get intall maven
RUN apt-get install tomcat9
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git && \
  cd boxfuse-sample-java-war-hello/ && \
  mvn package
EXPOSE 80