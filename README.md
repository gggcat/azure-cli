# azure-cli

## About

This is Azure-CLI SHELL container.

## DooD(Docker outside of Docker)

container use `docker.sock` on host

``` yaml
    volumes:
        - /var/run/docker.sock:/var/run/docker.sock
```

## azure-cli - azure-cli and docker

1. docker-compose build azure-cli
1. docker-compose run azure-cli