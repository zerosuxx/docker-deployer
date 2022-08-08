# docker-deployer

[![Docker Image CI](https://github.com/zerosuxx/docker-deployer/actions/workflows/docker-image.yml/badge.svg)](https://github.com/zerosuxx/docker-deployer/actions/workflows/docker-image.yml)
[![Docker Pulls](https://img.shields.io/docker/pulls/zerosuxx/deployer)](https://hub.docker.com/r/zerosuxx/deployer)

base image: `docker:latest`

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
- `depl0yer`

#### full
- `docker-compose`
- `docker buildx`
- `kubectl`

see available scripts:
- run `make scripts` command

login into container
- run `make sh` command
