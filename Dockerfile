FROM alpine:latest
MAINTAINER pontus@zkylark.se

# Install ddclient
RUN apk add --no-cache \
  wget \
  unzip \
  make \
  perl \
  perl-utils \
  perl-test-taint \
  perl-netaddr-ip \
  perl-net-ip \
  perl-yaml \
  perl-log-log4perl \
  perl-io-socket-ssl \
  perl-app-cpanminus && \ 
  cpanm Data::Validate::IP && \
  mkdir -p /var/cache/ddclient && \
  mkdir /ddclient

COPY files/ddclient_v3.9.0 /usr/sbin/ddclient
COPY files/start_ddclient.sh /ddclient/start_ddclient.sh

# Run ddclient
CMD ["/bin/sh", "/ddclient/start_ddclient.sh"]
