FROM openjdk:8-alpine

RUN  apk update && apk add unzip

COPY ./dss-demo-bundle-5.9.zip /tmp
RUN unzip /tmp/dss-demo-bundle-5.9.zip -d /tmp
RUN mv /tmp/dss-demo-bundle-5.9 /dss

RUN chmod +x /dss/apache-tomcat-8.5.68/bin/catalina.sh

COPY ./startup.sh /dss/
RUN chmod +x /dss/startup.sh

COPY ./tsp-config.xml /dss/

COPY ./setenv.sh  /dss/apache-tomcat-8.5.68/bin/
RUN chmod +x  /dss/apache-tomcat-8.5.68/bin/setenv.sh


ENTRYPOINT [ "/dss/startup.sh" ]
CMD [ "/bin/sh" ]
