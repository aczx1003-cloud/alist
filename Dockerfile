FROM alpine:latest
WORKDIR /root
RUN apk add --no-cache wget ca-certificates
RUN wget https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-amd64.zip
RUN unzip Xray-linux-amd64.zip && chmod +x xray
COPY config.json ./
CMD ["./xray", "run", "-c", "config.json"]
