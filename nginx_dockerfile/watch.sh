cd /usr/local/nginx/sbin
./nginx
sleep 1

while true; do
    pid=$(pgrep nginx)
    if [ $? -ne 0 ]; then
        exit 1
    fi
    sleep 1
done
