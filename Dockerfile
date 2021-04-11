FROM node:12-alpine
USER root
RUN apk add --update --no-cache \
    curl \
    jq \
    python3 \
    binutils-gold \
    g++ \
    gcc \
    gnupg \
    libgcc \
    linux-headers \
    git \
    make
RUN npm i -g npm@7.9.0
RUN npm install -g --unsafe-perm netlify-cli
USER node
ENV NETLIFY_AUTH_TOKEN=""
RUN git config --global user.email "dev@yearend.com"
RUN git config --global user.name "semantic-release-bot"
WORKDIR /home/node
CMD ["/usr/local/bin/netlify"]
LABEL org.opencontainers.image.authors="Jared Hobbs <jared.hobbs@yearend.com>"
