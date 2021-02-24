FROM alpine:3

RUN apk add --no-cache git

ADD ./changelog.awk /bin/changelog.awk
RUN chmod +x /bin/changelog.awk

WORKDIR /root

ENTRYPOINT ["/bin/changelog.awk"]