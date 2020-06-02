FROM docker.elastic.co/elasticsearch/elasticsearch:7.7.0
ARG plugin_url
USER root
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch $plugin_url

