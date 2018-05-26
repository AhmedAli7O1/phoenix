FROM ubuntu:16.04

RUN apt-get update -y &&\
    apt-get -y install software-properties-common wget &&\
    wget -qO - https://openresty.org/package/pubkey.gpg | apt-key add - &&\
    add-apt-repository -y "deb http://openresty.org/package/ubuntu $(lsb_release -sc) main" &&\
    apt-get update -y &&\
    apt-get install openresty -y

ENV PATH="/usr/local/openresty/nginx/sbin:${PATH}"

WORKDIR /phoenix

CMD ["nginx", "-p", "/phoenix", "-c", "conf/nginx.conf"]
