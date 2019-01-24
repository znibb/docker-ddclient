#!/bin/bash

user="znibb"
name="ddclient-rpi"
ddclient_version="3.9.0"

ddclient_dl_path="https://sourceforge.net/projects/ddclient/files/ddclient/ddclient-$ddclient_version/ddclient-$ddclient_version.tar.gz"

if [[ ! -f "files/ddclient" ]]; then
	wget $ddclient_dl_path
	tar xfzv "ddclient-$ddclient_version.tar.gz" "ddclient-$ddclient_version/ddclient"
	mv "ddclient-$ddclient_version/ddclient" files/
	rmdir "ddclient-$ddclient_version"
	rm "ddclient-$ddclient_version.tar.gz"
fi

docker build -t "$user/$name" .
