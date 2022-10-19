# docker-deployer

[![Docker Image CI](https://github.com/zerosuxx/docker-deployer/actions/workflows/docker-image.yml/badge.svg)](https://github.com/zerosuxx/docker-deployer/actions/workflows/docker-image.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/zerosuxx/deployer)](https://hub.docker.com/r/zerosuxx/deployer)

> base image: `docker:base` (included docker-compose and buildx plugins)

> full image: `docker:latest` (included k8s tools)

### installed apps:
#### base
- `bash`
- `nano`
- `git`
- `make`
- `htop`
- `curl`
- `bash-completion`
- `jq`
- `openssh-client`
- `gettext` (envsubst)
- `iproute2` (ip)
- `depl0yer`

#### full
- `kubectl`

see available scripts:
- run `make scripts` command

login into container
- run `make sh` command
