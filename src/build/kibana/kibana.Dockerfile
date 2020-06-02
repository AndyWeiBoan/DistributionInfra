FROM docker.elastic.co/kibana/kibana:7.7.0
ARG plugin_url
RUN /usr/share/kibana/bin/kibana-plugin install $plugin_url
USER kibana