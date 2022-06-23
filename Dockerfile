FROM alpine:3.10
WORKDIR /workflow
RUN apk update && apk add curl
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]