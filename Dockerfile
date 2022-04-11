FROM nginx:alpine

ENV TZ=Asia/Shanghai

ADD default.conf /etc/nginx/conf.d/default.conf

ADD startup.sh /startup.sh

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

CMD ["sh", "/startup.sh"]
