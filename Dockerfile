FROM golang:1.23.5-alpine3.21
WORKDIR /usr/src/app
RUN go install github.com/air-verse/air@latest