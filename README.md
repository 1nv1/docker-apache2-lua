# docker-apache2-lua

Dockerfile to build an apache2-lua image

## Basic

### Content

Based on alpine:3.12 with the following packages:

* Apache2
* Lua 5.3

### How to build? 

```sh
docker|podman build --tag <tag:version> .
```

### Create container

```sh
docker|podman run --name <container-name> -v <pages-path>:/var/www/localhost/htdocs -p <port>:80 -dit <tag:version>
```

## Complete

### Content

Based on alpine:3.12 with the following packages:

* Apache2
* Build-base
* Git
* Lua 5.3
* Lua 5.3 (dev)
* Luarocks
* Openssl
* Gcc
* Bash

### How to build? 

```sh
docker|podman build --tag <tag:version> .
```

### Create container

```sh
docker|podman run --name <container-name> -v <pages-path>:/var/www/localhost/htdocs -p <port>:80 -dit <tag:version>
```
