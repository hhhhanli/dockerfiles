FROM ubuntu:latest
WORKDIR ~
COPY nginx-*.tar.gz ./
RUN tar -zxvf nginx-*.tar.gz
RUN rm -f nginx-*.tar.gz
RUN apt update
RUN apt install build-essential libtool libpcre3 libpcre3-dev  zlib1g-dev  openssl libssl-dev vim -y
RUN cd nginx*; ./configure --prefix=/usr/local/nginx --with-http_ssl_module --with-http_v2_module --with-http_realip_module --with-http_auth_request_module --with-stream=dynamic --with-stream_ssl_module --with-stream_realip_module
RUN cd nginx*; make & make install
RUN ln -s /usr/local/nginx/sbin/nginx /usr/sbin/
RUN rm -rf nginx* 
COPY watch.sh ./
ENTRYPOINT sh watch.sh
