FROM docker/compose:1.24.0

RUN apk add --no-cache bash nano git make

COPY exec-cmd-in-docker.sh /usr/bin/exec-cmd-in-docker
COPY get-docker-service-name.sh /usr/bin/get-docker-service-name
COPY update-service.sh /usr/bin/update-service
COPY entrypoint.sh /usr/bin/entrypoint

RUN chmod +x \
    /usr/bin/exec-cmd-in-docker \
    /usr/bin/get-docker-service-name \
    /usr/bin/update-service \
    /usr/bin/entrypoint

ENTRYPOINT ["entrypoint"]

CMD ["bash"]
