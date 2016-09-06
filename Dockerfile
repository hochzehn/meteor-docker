FROM debian

RUN apt-get update \
 && apt-get install -y curl

RUN curl https://install.meteor.com/ | sh
RUN export LC_ALL=es_MX.utf8

ENTRYPOINT ["meteor"]
CMD ["--help"]
