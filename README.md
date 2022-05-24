# comfoairq-homie-docker
Docker container to simplify using the great work provided by pycomfoconnect (https://github.com/michaelarnauts/comfoconnect/) and ComfoAirQ-Homie (https://github.com/klaudiusz223/ComfoAirQ-Homie).

Please note: This is my first attempt in creating docker images. I'm happy for any suggestions or pull requests to improve the code.

#  Usage

## Build docker container

    docker build --tag comfoairq-homie-docker .

## Run docker container

    docker run --init --network host \
      -e PIN="xxxx" \
      -e UUID="00000000000000000000000000000000" \
      comfoairq-homie-docker    
  
Note: host type network allows the script to discover the comfoconnect device, the default bridge might not work.

You may want to specify further environment variables to configure the MQTT broker:

| ENV (-e) | ComfoAirQ-Homie setting | default | Description |
| --- | --- | --- | --- |
| $PIN | COMFOCONNECT_PIN | *none (required)* | Comfoconnect Module PIN |
| $UUID | COMFOCONNECT_UUID | *none (required)* | Comfoconnect Module UUID |
| $MQTT_BROKER | MQTT_BROKER | localhost | MQTT broker hostname |
| $MQTT_PORT | MQTT_PORT | 1883 | MQTT broker port |
| $MQTT_USERNAME | MQTT_USERNAME | null | MQTT broker credentials |
| $MQTT_PASSWORD | MQTT_PASSWORD | null | MQTT broker credentials |
| $HOMIE_ID | HOMIE_ID | comfoairq | Homie identifier |
| $HOMIE_NAME | HOMIE_NAME | ComfoAirQ | Homie descriptive name |
