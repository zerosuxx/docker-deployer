FROM docker/compose:1.28.2

RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.13/main' >> /etc/apk/repositories

RUN apk add --no-cache --update curl bash nano git make htop bash-completion jq openssh-client \
	&& rm -rf /tmp/* /var/cache/apk/*

COPY scripts/ /usr/local/bin/

RUN chmod +x /usr/local/bin/*

ENTRYPOINT ["entrypoint"]

CMD ["bash"]
