FROM alpine:latest
WORKDIR /tmp
RUN wget https://github.com/v2fly/v2ray-core/releases/download/v5.7.0/v2ray-linux-64.zip
RUN unzip v2ray-linux-64.zip -d /usr/local/v2ray
RUN ln -s /usr/local/v2ray/v2ray /usr/bin/v2ray
RUN rm v2ray-linux-64.zip
ENTRYPOINT v2ray run

