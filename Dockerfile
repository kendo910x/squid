From gentoo/stage3-amd64

ENV TZ Asia/Tokyo
RUN emerge squid && /usr/sbin/squid -z
COPY squid.conf /etc/squid/
CMD  /usr/sbin/squid -N
