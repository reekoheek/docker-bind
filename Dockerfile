FROM alpine

RUN set -x \
  && apk add --no-cache bind \
  && touch /etc/bind/named.conf \
  && mkdir /var/cache/bind \
  && chown named /var/cache/bind

WORKDIR /var/cache/bind

VOLUME [ "/etc/bind" ]

EXPOSE 53/udp 53/tcp

CMD [ "/usr/sbin/named", "-u", "named", "-g" ]
