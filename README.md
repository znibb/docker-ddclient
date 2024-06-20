# docker-ddclient
Docker container for running ddclient to keep Cloudflare DNS records up to date

**This setup keeps your Cloudflare API email and key in environment variables due to ddclient being incompatible with docker secrets**

## Setup
1. Initialize config files by running init.sh: `./init.sh`
1. Input your personal information into `ddclient.conf`
1. Run `docker compose up` and check logs
