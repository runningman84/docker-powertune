FROM ubuntu:22.04

LABEL org.opencontainers.image.source https://github.com/runningman84/docker-powertune

RUN apt-get update && apt-get -y install powertop && rm -rf /var/lib/apt/lists/

ADD run.sh /run.sh
RUN chmod +x /*.sh

CMD ["/run.sh"]