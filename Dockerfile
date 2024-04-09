FROM centos:7           # Specifies the base image

RUN yum update -y       # Runs commands within the container

RUN yum install java openjdk -y

ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.100/bin/apache-tomcat-8.5.100.tar.gz /opt      # Download from internet

WORKDIR /opt                                         # Sets the working directory within the container

RUN tar -xvzf apache-tomcat-8.5.100.tar.gz -C /opt

WORKDIR /opt/apache-tomcat-8.5.100/bin/

ADD https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war /opt/apache-tomcat-8.5.100/webapps/

COPY context.xml /opt/apache-tomcat-8.5.100/conf/context.xml            # Copies files from the host system into the container

ENV Name="student_Home"

EXPOSE 8080           # Exposes a port from the container.

CMD ["./catalina.sh", "run"]    # Specifies the default command to run when the container starts