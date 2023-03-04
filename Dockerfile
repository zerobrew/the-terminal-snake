FROM golang:alpine
ENV LANG en_US.UTF-8

COPY . /go/src/github.com/zerobrew/the-terminal-snake
WORKDIR /go/src/github.com/zerobrew/the-terminal-snake

RUN apk add --no-cache git
RUN go get ./
RUN go build -o ./_bin/snake-game

ENTRYPOINT "./_bin/snake-game"
