FROM alpine AS base

RUN apk update
RUN apk add clang

FROM alpine
COPY --from=base /usr/bin/clang-format /usr/bin