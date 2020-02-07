FROM docker/compose:1.25.4

RUN apk add --no-cache bash nano git make htop curl bash-completion

COPY scripts/ /usr/local/bin/

RUN chmod +x /usr/local/bin/*

ENTRYPOINT ["entrypoint"]

CMD ["bash"]
