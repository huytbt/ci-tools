FROM alexwijn/docker-git-php-composer

MAINTAINER @huytbt

ADD ci-git-process

RUN cp ci-git-process /usr/local/bin
