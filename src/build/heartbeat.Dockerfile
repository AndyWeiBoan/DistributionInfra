FROM docker.elastic.co/beats/heartbeat:7.6.1
COPY /build/beat/heartbeat.yml /usr/share/heartbeat/heartbeat.yml
COPY /build/beat/heartbeat-web.yml /usr/share/heartbeat/monitors.d/heartbeat-web.yml
USER root
RUN chown root /usr/share/heartbeat/heartbeat.yml
RUN chown root /usr/share/heartbeat/monitors.d/heartbeat-web.yml
USER heartbeat