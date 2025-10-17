FROM nginx:alpine

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY nginx.conf /etc/nginx/conf.d/default.conf

COPY *.html ./

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]