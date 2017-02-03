docker rm -f "$CTN_NAME";
\
PATH_LOCAL_WWW=/Users/p_andy/deploy-setup/_dockerfile/to-mount/nginx-static/starter
PATH_CONFIG=/Users/p_andy/deploy-setup/_dockerfile/to-mount/nginx-static/volumes/conf.d
CTN_SERVER=/usr/share/nginx/html:ro
CTN_NAME=nginxtest
CTN_IMG=devmtl/nginx-fire:1.10.3-alpine-0
\
docker run -d \
--name "$CTN_NAME" \
-p 8080:80 \
-v "$PATH_LOCAL_WWW":"$CTN_SERVER" \
"$CTN_IMG"


docker run --rm \
-v /Users/p_andy/deploy-setup/_dockerfile/nginx-brotli/tests.sh:/tests.sh \
--entrypoint sh "$CTN_IMG" /tests.sh


— — — — — — — — — — — — — — — —


PATH_LOCAL_WWW=/Users/p_andy/deploy-setup/_dockerfile/to-mount/nginx-static/starter
PATH_CONFIG=/Users/p_andy/deploy-setup/_dockerfile/to-mount/nginx-static/volumes/conf.d
CTN_SERVER=/usr/share/nginx/html:ro
CTN_NAME=nginxtest
CTN_IMG=devmtl/nginx-fire-base:edge_2017-02-02_22-52
\
docker run -d \
--name "$CTN_NAME" \
-p 8080:80 \
-v "$PATH_LOCAL_WWW":/usr/share/nginx/html:ro \
-v "$PATH_CONFIG":/etc/nginx/conf.d:ro \
"$CTN_IMG"


# devmtl/nginx-fire-base:edge_2017-02-02_22-52
-v "$LOCAL_DIR":"$CTN_SERVER" \

docker run -d --name nginxtest -p 8080:80 devmtl/nginx-fire-official:1.10.3-alpine-0