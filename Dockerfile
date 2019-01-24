FROM resin/armhf-alpine:latest

MAINTAINER Znibb <znibb@zkylark.se>

# Run as root
USER root

# Install ddclient
RUN apk add --no-cache \
	make \
	tar \
	wget \
	perl \
	perl-digest-sha1 \
	perl-io-socket-ssl \
	perl-json

RUN \
	curl -L http://cpanmin.us | perl - App::cpanminus && \
	cpanm \
		Data::Validate::IP \
		JSON::Any

RUN mkdir -p /var/cache/ddclient

COPY files/ddclient /usr/sbin/ddclient

# Run ddclient
CMD ["/usr/sbin/ddclient", "-file", "/etc/ddclient.conf", "-verbose", "-debug", "-noquiet", "-foreground"]
