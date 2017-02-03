### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### #
#
# 	Configs for this build
#
### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### #
ENV_IMG_NAME="nginx-fire"
ENV_SOFT_VER="1.10.3-alpine-0"
    ENV_FROM="devmtl/alpine-fire-base:3.5-6"


### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### #
#
# 	Artifacts
#
### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### #
ENV_IMG_EDGE=devmtl/nginx-brotli:edge_2017-02-03_11-53
ENV_IMG_VERSION=devmtl/nginx-fire:1.10.3-alpine-0
ENV_IMG_STABLE=devmtl/nginx-fire:stable


### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### #
#
#	LAST_VERSION 	  | TAGS 					   | DATE 		 	  | FROM_IMAGE
#
### ### ### ### ### ### ### ### ### ### ### ### ### ### ### ### #

# devmtl/nginx-fire:1.10.3-alpine-0 | tags: edge=null stable=yes | 2017-02-03_13-10 | devmtl/alpine-fire-base:3.5-6
# devmtl/nginx-fire:stable | tags: edge=null stable=yes | 2017-02-03_13-10 | devmtl/alpine-fire-base:3.5-6
# devmtl/nginx-brotli:edge_2017-02-03_11-53 | tags: edge=yes stable=null | 2017-02-03_11-53 | devmtl/alpine-fire-base:3.5-6

# devmtl/nginx-brotli:edge_2017-02-03_11-10 | tags: edge=yes stable=null | 2017-02-03_11-10 | devmtl/alpine-fire-base:3.5-6

# devmtl/nginx-brotli:edge_2017-02-03_10-36 | tags: edge=yes stable=null | 2017-02-03_10-36 | devmtl/nginx-fire-official:1.10.3-alpine-0