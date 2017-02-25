FROM alpine:3.4

LABEL Description="DynRoute53" Vendor="Radek Wierzbicki"

MAINTAINER Radek Wierzbicki <radekw@me.com>

RUN apk update && \
    apk add python py-pip py-setuptools ca-certificates groff less curl bash && \
    rm -rf /var/cache/apk/* && \
    pip install awscli==1.11.55

COPY dynr53 /usr/local/bin/

CMD ["dynr53"]
