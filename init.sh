#!/bin/bash
if [ ! -f ddclient.conf ]; then
	cp -v files/ddclient.conf.example ddclient.conf
fi
if [ ! -f .env ]; then
	cp -v files/.env.example .env
fi