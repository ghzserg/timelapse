#!/bin/sh

set -e

source /opt/config/mod/.shell/0.sh

INC="[include plugins/timelapse/moonraker.timelapse.cfg]"
FILE="/opt/config/mod_data/plugins.moonraker.conf"

grep -qF "${INC}" "${FILE}" || echo "${INC}" >> "${FILE}"

./update.sh

echo "Moonraker Timelapse installed"
echo "REBOOT" >/tmp/printer
