FROM alpine:latest

RUN apk add --update curl
RUN curl --silent --location --output /usr/local/bin/jp \
    https://github.com/jmespath/jp/releases/download/0.1.3/jp-linux-386
RUN chmod 755 /usr/local/bin/jp

CMD ["jp", "-h"]
