#!/bin/sh
export MQTT_BROKER=${MQTT_BROKER:-localhost}
export MQTT_PORT=${MQTT_PORT:-1883}
export MQTT_USERNAME=${MQTT_USERNAME:-null}
export MQTT_PASSWORD=${MQTT_PASSWORD:-null}

export HOMIE_ID=${HOMIE_ID:-comfoairq}
export HOMIE_NAME=${HOMIE_NAME:-ComfoAirQ}

envsubst < config.template > comfoairq_homie.yml
