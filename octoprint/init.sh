#!/bin/sh
SETUP_FILE=/octoprint/octoprint/config_setup
if [ ! -f "$SETUP_FILE" ]; then
    cp /startup_config/$CONFIG_FILE_NAME /octoprint/octoprint/config.yaml
    cp /startup_config/$USERS_FILE_NAME /octoprint/octoprint/users.yaml
    touch $SETUP_FILE
fi
/init