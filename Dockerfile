FROM alpine

RUN apk add --update aria2 && rm -rf /var/cache/apk/*

RUN apk --no-cache add shadow && \
        groupadd -r dummy && \
        useradd -r -g dummy dummy -u 1000

ADD https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 /usr/bin/confd

RUN chmod +x /usr/bin/confd

COPY ./confd /etc/confd
RUN mkdir /opt/aria2/
WORKDIR /opt/aria2
ADD entrypoint.sh ./
RUN chown -R 1000:1000 ./
RUN chmod +x entrypoint.sh


USER dummy
VOLUME /downloads

RUN ls -la ./
# aria2 RPC port, map as-is or reconfigure webui

# webui static content web server, map wherever is convenient
EXPOSE 6800/tcp

#CMD aria2c --conf-path=/etc/aria2.conf
ENTRYPOINT ["/opt/aria2/entrypoint.sh"]
