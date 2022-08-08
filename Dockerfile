FROM docker:latest

ARG DOCKER_COMPOSE_VERSION='2.9.0'
ARG BUILDX_VERSION='0.8.2'
ARG DEPL0YER_VERSION='0.4.0'
ARG KUBECTL_VERSION='1.24.3'

RUN apk add --no-cache --update \
    curl \
    wget \
    bash \
    nano \
    git \
    make \
    htop \
    bash-completion \
    jq \
    openssh-client \
    gettext \
    iproute2 \
	&& rm -rf /tmp/* /var/cache/apk/*

RUN if [ `arch` == 'x86_64' ]; then echo "amd64" > /arch; else echo "arm64" > /arch; fi

RUN curl -fL -o /usr/local/bin/docker-compose \
    https://github.com/docker/compose/releases/download/v${DOCKER_COMPOSE_VERSION}/docker-compose-linux-`arch`

RUN mkdir -p ~/.docker/cli-plugins/ \
    && cd ~/.docker/cli-plugins/ \
    && curl -fL -o docker-buildx \
       https://github.com/docker/buildx/releases/download/v${BUILDX_VERSION}/buildx-v${BUILDX_VERSION}.linux-`cat /arch` \
    && chmod +x docker-buildx

RUN curl -fL -o /usr/local/bin/depl0yer \
    https://repo.zer0.hu/artifactory/releases/zerosuxx/depl0yer/${DEPL0YER_VERSION}/depl0yer-${DEPL0YER_VERSION}-linux-`arch`

RUN curl -fL -o /usr/local/bin/kubectl \
    https://dl.k8s.io/release/v${KUBECTL_VERSION}/bin/linux/`cat /arch`/kubectl

COPY bin/ /usr/local/bin/

RUN chmod +x /usr/local/bin/*

ENTRYPOINT ["entrypoint"]

CMD ["bash"]
