FROM toancong/api

MAINTAINER @huytbt

COPY ci-git-process /usr/bin/ci-git-process
RUN chmod 700 /usr/bin/ci-git-process

ENTRYPOINT ["ci-git-process"]
