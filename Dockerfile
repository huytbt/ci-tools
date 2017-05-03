FROM node:slim

MAINTAINER @huytbt

RUN apk add --update git && \
  rm -rf /tmp/* /var/cache/apk/*

COPY ci-git-process /usr/bin/ci-git-process
RUN chmod 700 /usr/bin/ci-git-process

ENTRYPOINT ["ci-git-process"]
