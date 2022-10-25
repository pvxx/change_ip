FROM ubuntu:latest
WORKDIR /root/ip
COPY ./supercronic /bin/supercronic
RUN chmod +x /bin/supercronic
RUN apt update && apt install -y  curl
CMD ["/bin/supercronic", "/root/ip/my-cron"]
