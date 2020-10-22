FROM node:alpine
USER root
RUN apk add --update --no-cache curl jq
RUN npm install netlify-cli -g --unsafe-perm
RUN which netlify
USER node
ENV NETLIFY_AUTH_TOKEN=""
WORKDIR /home/node
ENTRYPOINT ["/usr/local/bin/netlify"]
LABEL org.opencontainers.image.authors="Jared Hobbs <jared.hobbs@yearend.com>"

