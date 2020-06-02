FROM docker.elastic.co/beats/heartbeat:7.7.0
COPY /build/beat/heartbeat.yml /usr/share/heartbeat/heartbeat.yml
COPY /build/beat/heartbeat-*.yml /usr/share/heartbeat/monitors.d/
USER root 
RUN chown root:heartbeat /usr/share/heartbeat/heartbeat.yml
RUN chown root:heartbeat /usr/share/heartbeat/monitors.d/*.yml
USER heartbeat