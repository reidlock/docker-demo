FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
COPY test.sh /opt/test.sh
ENTRYPOINT ["/opt/test.sh"]
CMD [""]
