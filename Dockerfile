FROM node:8

LABEL maintainer "joshua.foster@stfc.ac.uk"

ENV GITBOOK_VERSION 3.2.3

RUN yarn global add gitbook-cli && gitbook fetch ${GITBOOK_VERSION} && yarn cache clean

RUN mkdir -p /usr/src/gitbook

WORKDIR /usr/src/gitbook
