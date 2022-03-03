FROM thomx/fr24feed-piaware

RUN apt-get update && \
    apt-get install -y \
    bc \
    jq \
    curl \
    procps \
    mosquitto-clients && \
    wget https://raw.githubusercontent.com/savatier/docker-fr24feed-piaware-dump1090/main/mqtt-publisher.sh -O /opt/mqtt_publisher.sh && \
    chmod +x /opt/mqtt_publisher.sh

ENTRYPOINT ["/init"]
