docker build -t v2ray_alpine:v1 .

#docker run -ti -d --name "v2ray_alpine_env" --restart always --network host -v config.json:/usr/local/v2ray/config.json v2ray_alpine:v1
