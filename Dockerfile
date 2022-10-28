FROM ubuntu:latest
WORKDIR /root/ip
COPY ./supercronic /bin/supercronic
COPY ./cf-ddns.sh /bin/cf-ddns.sh
COPY ./my-cron /root/ip/my-cron
RUN chmod +x /bin/supercronic
RUN chmod +x /bin/cf-ddns.sh
RUN apt update && apt install -y  curl
CMD ["/bin/supercronic", "/root/ip/my-cron"]
