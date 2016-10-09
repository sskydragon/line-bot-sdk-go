FROM golang:1.7.1-alpine
MAINTAINER Dongri Jin <dongrify@gmail.com>

RUN apk --no-cache add git

RUN go get github.com/kaneshin/lime

ADD . /go/src/github.com/dongri/line-bot-sdk-go
WORKDIR /go/src/github.com/dongri/line-bot-sdk-go/examples

EXPOSE 3000

CMD ["lime", "-bin=/tmp/line-bot-sdk-go", "-port=3000", "-app-port=3001"]
