FROM alpine:latest

MAINTAINER John Allen <john.allen@technekes.com>

ENV AWSCLI_VERSION 1.11.175

RUN \
  apk --upgrade --no-cache add groff less python py-pip && \
  pip install "awscli==$AWSCLI_VERSION" && \
  apk --purge -v del py-pip

ENTRYPOINT ["aws"]
