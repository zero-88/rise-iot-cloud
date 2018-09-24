FROM node:8-alpine

WORKDIR /data
WORKDIR /usr/src/node-red

RUN apk add --no-cache make gcc g++ git

COPY src ./

RUN npm install \
    && chmod a+x start.sh

RUN apk del make gcc g++ git && rm -rf /var/cache/apk/*

ENV LOG_LEVEL="info" \
    NODE_PATH="/usr/src/node-red/node_modules:/data/node_modules" \
    NODE_RED_USER="admin" NODE_RED_PASSWORD="" \
    INITSYSTEM="on"

EXPOSE 1880
VOLUME ["/data"]

ENTRYPOINT [ "./start.sh" ]
