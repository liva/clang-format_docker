FROM alpine

RUN apk update \
 && apk add clang git \
 && mv /usr/bin/clang-format . \
 && rm /usr/bin/clang* \
 && mv clang-format /usr/bin
