FROM golang:1.13.4-alpine3.10
LABEL maintainer="Wei Cheng <weicheng@cldcvr.com>"

RUN apk update && \
    apk --update add \
    bash \
    ca-certificates \
    coreutils \
    curl \
    git \
    gettext \
    make \
    py-pip && \
    git config --global advice.detachedHead false

ENV INSTALL_PATH /usr/local/bin

WORKDIR /build-harness

RUN git clone https://github.com/cloudposse/build-harness.git
RUN git clone https://github.com/cldcvr/build-harness-extensions.git

ENTRYPOINT ["/bin/bash"]