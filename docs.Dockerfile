FROM alpine:3.12

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/.local/bin

COPY requirements.txt /mkdocs/
WORKDIR /mkdocs

RUN apk --no-cache --no-progress add py3-regex py3-pip py3-wheel \
  && pip3 install --user -r requirements.txt
