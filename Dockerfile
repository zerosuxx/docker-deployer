FROM docker:latest AS base

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

ARG DEPL0YER_VERSION='0.4.0'

RUN curl -fL -o /usr/local/bin/depl0yer \
    https://repo.zer0.hu/artifactory/releases/zerosuxx/depl0yer/${DEPL0YER_VERSION}/depl0yer-${DEPL0YER_VERSION}-linux-`arch`

COPY bin/ /usr/local/bin/

RUN chmod +x /usr/local/bin/*

ENTRYPOINT ["entrypoint"]

CMD ["bash"]

FROM base AS full

ARG KUBECTL_VERSION='1.24.3'

RUN if [ `arch` == 'x86_64' ]; then echo "amd64" > /arch; else echo "arm64" > /arch; fi

RUN curl -fL -o /usr/local/bin/kubectl \
    https://dl.k8s.io/release/v${KUBECTL_VERSION}/bin/linux/`cat /arch`/kubectl
