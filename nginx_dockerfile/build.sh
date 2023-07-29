wget http://nginx.org/download/nginx-1.24.0.tar.gz

docker build -t nginx_private:${1} .

rm -f nginx-*.tar.gz
