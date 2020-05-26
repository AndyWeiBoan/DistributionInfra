FROM docker.elastic.co/elasticsearch/elasticsearch:7.6.1
ARG plugin_url
USER root
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch $plugin_url

