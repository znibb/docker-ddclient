#!/bin/bash
if [ ! -f ddclient.conf ]; then
	cp files/ddclient.conf.example ddclient.conf
fi
