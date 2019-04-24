# ddclient in Docker
- Linux x64
- Deployed with Docker Swarm

## Before starting
1. Clone/download this repo: `git clone https://github.com/znibb/docker-ddclient`
2. Create config: `docker config create ddclient_config_v1 path/to/ddclient.conf`  
  - NOTE the config shall not contain a `password` entry!
  - Example config in files/
3. Set password: `echo "password='PASSWORD_HERE'" | docker secret create ddclient_passwd -`  
  - NOTE the apostrophes around the actual password phrase!

## Starting
Deploy: `docker stack deploy -c docker-stack.yml ddclient`

## Where can I get the latest version of ddclient
Visit `https://github.com/ddclient/ddclient/releases`
