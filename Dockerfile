FROM alpine:latest

RUN apk update
RUN apk add curl

RUN curl https://dl.minio.io/client/mc/release/linux-amd64/mc > mc

RUN apk del curl

RUN chmod +x mc
RUN mv mc /bin

