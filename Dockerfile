FROM alpine:3.10

LABEL maintainer="znibb: <znibb@zkylark.se>"

# Install ddclient
RUN apk add --no-cache \
  wget \
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
COPY files/ddclient.conf.example /ddclient/ddclient.conf

# Run ddclient
CMD ["/usr/sbin/ddclient", "-file", "/ddclient/ddclient.conf", "-foreground", "-syslog"]
