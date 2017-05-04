FROM node:latest

MAINTAINER @huytbt

# Install software requirements
RUN apt-get update && \
apt-get install -y git

COPY ci-git-process /usr/bin/ci-git-process
RUN chmod 700 /usr/bin/ci-git-process

ENTRYPOINT ["ci-git-process"]
