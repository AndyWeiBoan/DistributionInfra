FROM fluent/fluentd:edge
USER root
RUN fluent-gem install fluent-plugin-elasticsearch