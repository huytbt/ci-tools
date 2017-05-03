FROM mhart/alpine-node

MAINTAINER @huytbt

RUN apk add --no-cache git

COPY ci-git-process /usr/bin/ci-git-process
RUN chmod 700 /usr/bin/ci-git-process

ENTRYPOINT ["ci-git-process"]
