# Minimal Docker image for PRINSEQ v0.20.4 using Alpine base
FROM alpine:latest
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install PRINSEQ
RUN apk update && \
    apk add bash perl && \
    wget -qO- "http://iweb.dl.sourceforge.net/project/prinseq/standalone/prinseq-lite-0.20.4.tar.gz" | tar -zx && \
    chmod a+x prinseq-lite-*/*.pl && \
    mv prinseq-lite-*/*.pl /usr/local/bin/ && \
    rm -rf prinseq-lite-*
