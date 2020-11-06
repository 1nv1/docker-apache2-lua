FROM alpine:3.12

RUN apk update && \
    apk add apache2 \
    apache2-lua \
    git \
    lua5.3 \
    lua5.3-dev \
    luarocks \
    build-base \
    openssl \
    gcc \
    bash \
    --no-cache

RUN rm -rf /var/cache/apk/*

RUN echo '<Files "*.lua">'           >> /etc/apache2/conf.d/lua.conf
RUN echo '    SetHandler lua-script' >> /etc/apache2/conf.d/lua.conf
RUN echo '</Files>'                  >> /etc/apache2/conf.d/lua.conf

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
