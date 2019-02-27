#!/bin/sh

# Copy config object (since the original is immutable)
cp /etc/ddclient.conf /ddclient/ddclient.conf

# Append 'password' line from docker secret after the row containing login name
sed '/login=/r /run/secrets/ddclient_passwd' /ddclient/ddclient.conf | tee /ddclient/ddclient.conf

# Start ddclient
/usr/sbin/ddclient -file /ddclient/ddclient.conf -foreground -noquiet
