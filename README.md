# docker-ddclient
Docker container for running ddclient to keep Cloudflare DNS records up to date

**This setup keeps your Cloudflare API email and key in environment variables due to ddclient being incompatible with docker secrets**

## Setup
1. Make a copy of the example config: `cp ddclient.conf.example ddclient.conf`
1. Input your personal information into the config file
1. Run `docker-compose up` and check logs
