# backup-mx
Simple postfix backup mailserver for your Docker containers. Based on Alpine Linux.

## Description

This image allows you to run POSTFIX internally inside your docker installation.

## TL;DR

To run the container, do the following:
```
docker run --rm --name backup-mx -e "HOSTNAME=mx2.example.com -e DOMAINS=example.com,example2.com" -p 25:25 numero33/backup-mx
```

## Configuration options

The following configuration options are available:
```
ENV vars
$HOSTNAME = Postfix myhostname
$DOMAINS = Domains for relaying
```

### `DOMAINS`

Postfix will try to deliver emails asap to the primary server.

## Security

Postfix will run the master proces as `root`, because that's how it's designed. Subprocesses will run under the `postfix` account
which will use `UID:GID` of `100:101`.