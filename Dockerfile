FROM alpine:latest
RUN apk update && apk add --no-cache curl unzip
WORKDIR /root
RUN curl -L -o xray.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip && \
    unzip xray.zip && \
    rm xray.zip
COPY config.json /root/config.json
COPY start.sh /root/start.sh
RUN chmod +x /root/start.sh
EXPOSE 8080
CMD ["/root/start.sh"]
