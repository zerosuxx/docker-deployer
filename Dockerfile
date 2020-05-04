FROM docker/compose:1.25.5

RUN apk add --no-cache bash nano git make htop curl bash-completion jq \
	&& rm -rf /tmp/* /var/cache/apk/*

COPY scripts/ /usr/local/bin/

RUN chmod +x /usr/local/bin/*

ENTRYPOINT ["entrypoint"]

CMD ["bash"]
