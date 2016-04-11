FROM ubuntu:14.04
MAINTAINER Joshua "joshua7v@hotmail.com"
RUN apt-get -qq update
RUN apt-get install -y python-pip git
RUN pip install gunicorn

COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod 755 /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]

VOLUME ["/opt/calibre-web/Library/Books"]
EXPOSE 8083
