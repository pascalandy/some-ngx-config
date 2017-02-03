function fct_nginx.up {

CTN_NGX_TEST="nginxtest"
WWW_SRC=""$MNT_DEPLOY_SETUP"/_dockerfile/to-mount/nginx-static/starter"
WWW_DST="/usr/share/nginx/html"
STATIC_URL="http://cloudwait.com/pingme"

docker service rm "$CTN_NGX_TEST";
echo -e "$PIK_PINK Freshly removed: "$CTN_NGX_TEST""; echo;

docker service create \
--name "$CTN_NGX_TEST" \
--network "$NTW_FRONT" \
--restart-condition any \
--replicas 1 \
--restart-condition any \
--restart-max-attempts 10 \
--update-delay 7s \
--update-parallelism 2 \
--limit-memory 20M \
--reserve-memory 12M \
--constraint node.labels.apps_accepted==yes \
--mount	type=bind,src="$WWW_SRC",target="$WWW_DST" \
--label traefik.enable="true" \
--label traefik.frontend.rule="Host:cloudwait.com;Path:/nginxtest" \
--label traefik.frontend.entryPoints="http" \
--label traefik.docker.network="$NTW_FRONT" \
--label traefik.backend="$CTN_NGX_TEST" \
--label traefik.backend.loadbalancer.sticky="true" \
--label traefik.weight="10" \
--label traefik.frontend.priority="10" \
--label traefik.backend.loadbalancer.method="drr" \
--label traefik.port="80" \
"$IMG_nginx"

}