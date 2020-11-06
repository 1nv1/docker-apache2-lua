# docker-apache2-lua

Dockerfile to build an apache2-lua image

## Content

Based on alpine:3.12 with the following packages:

* Lua 5.3
* Apache2

## How to build? 

```sh
docker|podman build --tag <tag:version> .
```

## Create container

```sh
docker|podman run --name <container-name> -v <pages-path>:/var/www/localhost/htdocs -p <port>:80 -dit <tag:version>
```
