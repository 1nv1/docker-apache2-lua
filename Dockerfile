FROM alpine:3.12

RUN apk update && \
    apk add apache2 apache2-lua lua5.3 --no-cache

RUN echo '<Files "*.lua">'           >> /etc/apache2/conf.d/lua.conf
RUN echo '    SetHandler lua-script' >> /etc/apache2/conf.d/lua.conf
RUN echo '</Files>'                  >> /etc/apache2/conf.d/lua.conf

EXPOSE 80
EXPOSE 443

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
