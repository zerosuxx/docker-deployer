FROM docker/compose:1.29.2

ARG BUILDX_VERSION='0.6.3'
ARG DEPL0YER_VERSION='0.4.0'

RUN apk add --no-cache --update curl bash nano git make htop bash-completion jq openssh-client gettext \
	&& rm -rf /tmp/* /var/cache/apk/*

RUN mkdir -p ~/.docker/cli-plugins/ \
    && cd ~/.docker/cli-plugins/ \
    && wget https://github.com/docker/buildx/releases/download/v${BUILDX_VERSION}/buildx-v${BUILDX_VERSION}.linux-amd64 \
    && mv buildx-v${BUILDX_VERSION}.linux-amd64 docker-buildx \
    && chmod +x docker-buildx

RUN curl -fL -o /usr/local/bin/depl0yer \
    https://repo.zer0.hu/artifactory/releases/zerosuxx/depl0yer/${DEPL0YER_VERSION}/depl0yer-${DEPL0YER_VERSION}-linux-x86_64

COPY bin/ /usr/local/bin/

RUN chmod +x /usr/local/bin/*

ENTRYPOINT ["entrypoint"]

CMD ["bash"]
