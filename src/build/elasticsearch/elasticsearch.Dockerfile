ARG version
FROM docker.elastic.co/elasticsearch/elasticsearch:$version
ARG plugin_url
USER root
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install --batch $plugin_url

