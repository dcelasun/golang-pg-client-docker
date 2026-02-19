ARG GO_VERSION=latest
FROM golang:${GO_VERSION}-alpine

RUN apk add --no-cache postgresql-client