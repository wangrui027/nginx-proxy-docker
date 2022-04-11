# Nginx 反向代理程序

![http://nginx.org/nginx.png](http://nginx.org/nginx.png)

运行示例1（默认80端口）：

```bash
docker run -d -p 80:80 \
--name nginx-proxy \
--restart unless-stopped \
-e PROXY_ADDRESS=https://www.google.com \
wangrui027/nginx-proxy
```

运行示例2（自定义端口）：

```bash
docker run -d -p 80:8080 \
--name nginx-proxy \
--restart unless-stopped \
-e PORT=8080 \
-e PROXY_ADDRESS=https://www.google.com \
wangrui027/nginx-proxy
```
