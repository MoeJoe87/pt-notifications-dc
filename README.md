# pt-notifications-dc

PT Notifications Docker


[![Docker Pulls](https://img.shields.io/docker/pulls/moli87/pt-notifications-dc.svg?label=pulls&logo=docker&logoColor=FFFFFF)](https://hub.docker.com/r/moli87/pt-notifications-dc/)
[![Docker Stars](https://img.shields.io/docker/stars/moli87/pt-notifications-dc.svg?label=stars&logo=docker&logoColor=FFFFFF)](https://hub.docker.com/r/moli87/pt-notifications-dc/)
[![](https://images.microbadger.com/badges/image/moli87/pt-notifications-dc.svg)](https://microbadger.com/images/moli87/pt-notifications-dc/ "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/moli87/pt-notifications-dc.svg)](https://microbadger.com/images/moli87/pt-notifications-dc/ "Get your own version badge on microbadger.com")
[![Docker Build Status](https://img.shields.io/docker/cloud/build/moli87/pt-notifications-dc.svg?label=build&logo=docker&logoColor=FFFFFF)](https://hub.docker.com/r/moli87/pt-notifications-dc/)

Note: This is an addon for Profit Trailer

Compatible with Profit Trailer version : v2.4.25 and above
`https://github.com/Roy4lz/ptnotifications`

## Install Docker

- Windows `https://docs.docker.com/toolbox/toolbox_install_windows/`
- Mac OS `https://docs.docker.com/docker-for-mac/install/`
- Linux Ubuntu `https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce`

## Quick Guide

### Run latest PT Notification version

- Download and edit settings.properties. See for `https://github.com/Roy4lz/ptnotifications` reference.
- To Run Container and replace `/path/to/""` with the full path where the settings.properties file and data folder are.

### docker

```bash
docker create \
  --name=pt-notifications \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/Zurich \
  -v /path/to/settings.properties:/app/ptnotifications/settings.properties \
  -v /path/to/data:/app/ptnotifications/database \
  -v /path/to/logs:/app/ptnotifications/logs \
  --restart unless-stopped \
  moli87/pt-notifications-dc
```

### docker-compose

Compatible with docker-compose v3 schemas

```bash
---
version: '3'

services:
  profittrailer:
    image: moli87/pt-notifications-dc
    container_name: pt-notifications
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/Zurich
    volumes:
      - ./settings.properties:/app/ptnotifications/settings.properties
      - ./database:/app/ptnotifications/database
      - ./logs:/app/ptnotifications/logs
    restart: unless-stopped
```
If you like it, support appreciated!

BTC: 17cqx7P6aRn9egZfSkzbyNqKjd3Xm6W9T4

BCH: qq020gjmrd83rfaut4fzrncc8ejlv32q4yuhnzgc5c

BNB: bnb1m6fn76pplwf3pwem62ghcpryruu0kmnmrmsq22

ETH: 0x4B2895914147787d0C15868F86c460aF6Fb45D91

LTC: LbvRzuBrF4eVrEC2zkHveQAxEyfaNBAa3j

XMR: 45sS3GEkui1LosH14zvnvwChqEy8sK4pJXWAax1VvSD9BSN9qUsAuzsVwoTrvMjFndS9LpYpGBpCwY9JxifzxAW16wWsAAY
