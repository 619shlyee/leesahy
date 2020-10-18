FROM ubuntu:latest

#step2 nginx install

RUN apt-get update && apt-get install -y -q nginx
COPY ./index.html /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemonoff;"]
