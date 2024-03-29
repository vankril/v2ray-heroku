FROM alpine:latest

ADD run.sh /opt/run.sh

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && chmod +x /opt/run.sh

ENTRYPOINT ["sh", "-c", "/opt/run.sh"]
