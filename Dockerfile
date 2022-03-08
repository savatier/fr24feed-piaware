FROM thomx/fr24feed-piaware

RUN apt-get update && \
    apt-get install -y \
    bc \
    jq \
    curl \
    procps \
    mosquitto-clients && \
    wget https://raw.githubusercontent.com/savatier/fr24feed-piaware/main/mqtt-publisher.sh -O /opt/mqtt_publisher.sh && \
    chmod +x /opt/mqtt_publisher.sh

ENTRYPOINT ["/init"]

CMD ["/opt/mqtt_publisher.sh"]
