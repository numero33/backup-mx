FROM alpine

RUN apk add --update --no-cache postfix ca-certificates tzdata supervisor rsyslog

COPY supervisord.conf /etc/supervisord.conf
COPY rsyslog.conf /etc/rsyslog.conf
COPY run.sh /

RUN chmod +x /run.sh

USER root

CMD ["/bin/sh", "-c", "/run.sh"]