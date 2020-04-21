# dockerfiles-centos-user-adderable
Centos7, It support base user creation and password setting.

# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t abbasidoc/ubuntu .
	docker run -it --name u1 -v c:\\Users\\user\\df:/var/www/html -p 80:80 abbasidoc/ubuntu

```
Get the port that the container is listening on:

```
# docker ps
CONTAINER ID        IMAGE                         COMMAND                  CREATED             STATUS              PORTS                                            NAMES
3140cfc401bc        abbasi/ubuntu                 "/bin/sh -c /start.sh"   14 minutes ago      Up 47 seconds       0.0.0.0:80->80/tcp                               u1

```

To Rollback
```
    docker rm u1 -f
    docker rmi abbasi/ubuntu
```
