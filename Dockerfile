FROM node:10-alpine

# MAINTAINER Henrique Schmidt <henrique.schmidt@4all.com>

# run
RUN apk update && \
    apk add --no-cache bash curl python3 && \
    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
    python3 get-pip.py && \
    rm get-pip.py && \
    pip install --upgrade pip && \
    pip install awscli --upgrade
