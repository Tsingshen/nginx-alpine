#
# nginx-alpine whit TZ=Asia/Shanghai and UTF-8
# add nginx/default.conf server {autoindex on; autoindex_exact_size off;autoindex_localtime on;}
#     autoindex on;             #开启索引功能  
#     autoindex_exact_size off; # 关闭计算文件确切大小（单位bytes），只显示大概大小（单位kb、mb、gb）  
#     autoindex_localtime on;   # 显示本机时间而非 GMT 时间 
#
FROM nginx:stable-alpine

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && alias ll='ls -l --color=auto' && sed -i '/#charset/c \ \ \ \ charset utf-8;' /etc/nginx/conf.d/default.conf
