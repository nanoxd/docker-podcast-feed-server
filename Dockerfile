FROM golang:alpine
MAINTAINER Fernando Paredes <nano@fdp.io>

RUN apk update && apk add git
RUN go get -u github.com/nanoxd/castr
WORKDIR /config

CMD [ "castr" ]

EXPOSE 3000
VOLUME [ "/audiobooks", "/config" ]
