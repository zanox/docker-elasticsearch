FROM java
MAINTAINER Yarek Tyshchenko <yarek.tyshchenko@affiliatewindow.com>

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -yqq curl

RUN curl -sL https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-0.90.9.tar.gz | tar -zxf -

CMD ["elasticsearch-0.90.9/bin/elasticsearch", "-f"]
