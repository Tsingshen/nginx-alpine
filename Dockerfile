#
# nginx-alpine whit TZ=Asia/Shanghai and zh_CN.UTF-8
# add nginx/default.conf server {autoindex on; autoindex_exact_size off;autoindex_localtime on;}
#
FROM nginx:stable-alpine

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && alias ll='ls -l --color=auto' && sed -i '/#charset/c \ \ \ \ charset utf-8;' /etc/nginx/conf.d/default.conf
