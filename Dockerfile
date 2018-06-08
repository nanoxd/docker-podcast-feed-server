FROM golang:alpine
MAINTAINER Fernando Paredes <nano@fdp.io>

RUN apk update && apk add git
RUN go get -u github.com/f440/podcast-feed-server
WORKDIR /config

CMD [ "podcast-feed-server" ]

EXPOSE 3000
VOLUME [ "/audiobooks", "/config" ]
