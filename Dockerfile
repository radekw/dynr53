FROM alpine:3.15

LABEL Description="DynRoute53" Vendor="Radek Wierzbicki"

MAINTAINER Radek Wierzbicki <radekw@me.com>

RUN apk update && \
    apk add python3 py-pip py-setuptools ca-certificates groff less curl bash && \
    rm -rf /var/cache/apk/* && \
    pip install awscli==1.22.14

COPY dynr53 /usr/local/bin/

CMD ["dynr53"]
