FROM alexwijn/docker-git-php-composer

RUN apt-get install python-software-properties
RUN curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
RUN apt-get install nodejs

MAINTAINER @huytbt

COPY ci-git-process /usr/bin/ci-git-process
RUN chmod 700 /usr/bin/ci-git-process

ENTRYPOINT ["ci-git-process"]
