ARG ALPTAG=edge
FROM alpine:${ALPTAG}

RUN apk -U upgrade && \
    apk -v add tor lyrebird curl && \
    chmod 700 /var/lib/tor && \
    rm -rf /var/cache/apk/*

USER tor
EXPOSE 8853/udp 9150/tcp

CMD ["/usr/bin/tor", "-f", "/etc/tor/torrc"]
