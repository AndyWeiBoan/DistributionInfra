ARG version
FROM docker.elastic.co/kibana/kibana:$version
ARG plugin_url
RUN /usr/share/kibana/bin/kibana-plugin install $plugin_url
USER kibana