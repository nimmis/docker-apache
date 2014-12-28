FROM nimmis/ubuntu:14.04

MAINTAINER nimmis <kjell.havneskold@gmail.com>

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
apt-get install -y apache2  && \
rm -rf /var/lib/apt/lists/*

ADD run.sh /run.sh
RUN chmod 0755 /run.sh

EXPOSE 80

#set default command
CMD ["/run.sh"]
