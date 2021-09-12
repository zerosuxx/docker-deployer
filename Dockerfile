FROM docker/compose:1.29.2

ARG BUILDX_VERSION='0.6.3'

RUN echo 'https://dl-cdn.alpinelinux.org/alpine/v3.13/main' >> /etc/apk/repositories

RUN apk add --no-cache --update curl bash nano git make htop bash-completion jq openssh-client \
	&& rm -rf /tmp/* /var/cache/apk/*

RUN mkdir -p ~/.docker/cli-plugins/ \
    && cd ~/.docker/cli-plugins/ \
    && wget https://github.com/docker/buildx/releases/download/v${BUILDX_VERSION}/buildx-v${BUILDX_VERSION}.linux-amd64 \
    && mv buildx-v${BUILDX_VERSION}.linux-amd64 docker-buildx \
    && chmod +x docker-buildx

COPY bin/ /usr/local/bin/

RUN chmod +x /usr/local/bin/*

ENTRYPOINT ["entrypoint"]

CMD ["bash"]
