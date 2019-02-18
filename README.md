# ddclient Docker image (linux x64)

## Before starting
1. Create config: `docker config create ddclient_config_v1 path/to/ddclient.conf`
NOTE the config shall not contain a `password` entry!
2. Set password: `echo "password='PASSWORD_HERE'" | docker secret create ddclient_passwd -`
NOTE the apostrophes around the actual password phrase!

## Starting
Deploy: `docker stack deploy -c docker-compose.yml ddclient`

## Where can I get the latest version of ddclient
Visit `https://github.com/ddclient/ddclient/releases`
