FROM alexwijn/docker-git-php-composer

MAINTAINER @huytbt

COPY ci-git-process /usr/bin/ci-git-process
RUN chmod 700 /usr/bin/ci-git-process

ENTRYPOINT ["ci-git-process"]
