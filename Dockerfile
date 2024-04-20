FROM ubuntu:22.04

RUN apt-get update && apt-get -y install powertop && rm -rf /var/lib/apt/lists/

ADD run.sh /run.sh
RUN chmod +x /*.sh

CMD ["/run.sh"]