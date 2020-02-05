FROM ubuntu:16.04
WORKDIR minecraft
COPY nukkit.yml .
COPY server.properties .
COPY eula.txt
RUN apt-get update && \
    apt-get install -y openjdk-8-jre-headless wget && \
    wget https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar
EXPOSE 25565 25575
CMD java -Xmx1024M -Xms1024M -jar server.jar nogui
