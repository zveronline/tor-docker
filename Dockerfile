ARG ALPTAG=3.20.3
FROM alpine:${ALPTAG}

RUN echo "@test https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    apk -U upgrade && \
    apk -v add tor lyrebird@test curl && \
    chmod 700 /var/lib/tor && \
    rm -rf /var/cache/apk/*

USER tor
EXPOSE 8853/udp 9150/tcp

CMD ["/usr/bin/tor", "-f", "/etc/tor/torrc"]
