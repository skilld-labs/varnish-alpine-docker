FROM gliderlabs/alpine:3.3
MAINTAINER  Thiago Figueiro <thiagocsf@gmail.com>
ENV REFRESHED_AT 2015-09-02
ENV VARNISH_BACKEND_ADDRESS 192.168.1.65
ENV VARNISH_MEMORY 100M
ENV VARNISH_BACKEND_PORT 80
EXPOSE 80

RUN apk --no-cache add varnish

ADD start.sh /start.sh
CMD ["/start.sh"]
