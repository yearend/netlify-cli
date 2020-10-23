FROM node:alpine
USER root
RUN apk add --update --no-cache curl jq
RUN npm install -g --unsafe-perm \
    netlify-cli \
    semantic-release \
    @semantic-release/git \
    @semantic-release/gitlab
USER node
ENV NETLIFY_AUTH_TOKEN=""
WORKDIR /home/node
CMD ["/usr/local/bin/netlify"]
LABEL org.opencontainers.image.authors="Jared Hobbs <jared.hobbs@yearend.com>"

