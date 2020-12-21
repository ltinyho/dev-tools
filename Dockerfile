# ARG TAG_GOLANG=1.11.5-stretch
# FROM golang:${TAG_GOLANG} AS build

# WORKDIR /go/src/github.com/alexellis/href-counter/
# RUN go get -d -v golang.org/x/net/html  
# COPY app.go .
# RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

FROM docker.sharkgulf.cn/public/alpine-ca:3.10

RUN mkdir -p /app /app/log

COPY ./bikesvc ./app.yml /app/

WORKDIR /app

VOLUME [ "/app/log" ]

RUN chmod +x ./bikesvc

EXPOSE 8080

ENTRYPOINT ["./bikesvc"]

