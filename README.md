# Docker Bind (Alpine)

This docker image provide Bind (DNS Server) based on Alpine Linux.

## How to Use

Run immediately when already have `named.conf` data in `/the/bind/data` directory.

```bash
docker run -d --name bind -v /the/bind/data:/etc/bind reekoheek/bind
```
