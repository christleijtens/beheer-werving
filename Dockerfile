FROM alpine:latest

ADD data /data

RUN apk add --update curl
RUN curl --silent --location --output /usr/local/bin/jp \
    https://github.com/jmespath/jp/releases/download/0.1.3/jp-linux-386
RUN chmod 755 /usr/local/bin/jp

#ENTRYPOINT ["jp"]

# jp --unquoted --filename puzzel.json --expr-file query.txt
CMD ["jp", "--unquoted", "--filename", "/data/puzzel.json", "--expr-file", "/data/query.txt"]
