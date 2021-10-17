# docker-deployer

[![Docker Image CI](https://github.com/zerosuxx/docker-deployer/actions/workflows/docker-image.yml/badge.svg)](https://github.com/zerosuxx/docker-deployer/actions/workflows/docker-image.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/zerosuxx/deployer)](https://hub.docker.com/r/zerosuxx/deployer)

base image: `docker-compose v1.29.2`

installed apps:
- `bash`
- `nano`
- `git`
- `make`
- `htop`
- `curl`
- `bash-completion`
- `jq`
- `openssh-client`
- `docker buildx`
- `depl0yer`

see available scripts:
- run `make scripts` command

login into container
- run `make sh` command