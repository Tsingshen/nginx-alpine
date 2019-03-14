#
# nginx-alpine whit TZ=Asia/Shanghai and UTF-8
# add nginx/default.conf server {autoindex on; autoindex_exact_size off;autoindex_localtime on;}
#     autoindex on;             #开启索引功能  
#     autoindex_exact_size off; # 关闭计算文件确切大小（单位bytes），只显示大概大小（单位kb、mb、gb）  
#     autoindex_localtime on;   # 显示本机时间而非 GMT 时间 
#
FROM nginx:stable-alpine

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && alias ll='ls -l --color=auto' && sed -i '/#charset/c \ \ \ \ charset utf-8;' /etc/nginx/conf.d/default.conf
### 提前配置好模板文件，ADD进去就可以了，但是，需要再添加一次CMD,把之前的CMD覆盖掉。
