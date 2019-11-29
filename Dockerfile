FROM openjdk:8-jre-stretch

WORKDIR /usr/

COPY Tekkit_Lite_Server_0.6.5.zip server.zip

RUN unzip server.zip -d server

WORKDIR /usr/server

CMD bash launch.sh
