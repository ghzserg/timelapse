#!/bin/sh

set -e

source /opt/config/mod/.shell/0.sh

INC="[include plugins/timelapse/moonraker.timelapse.cfg]"
FILE="/opt/config/mod_data/plugins.moonraker.conf"

grep -q "${INC}" "${FILE}" || echo "${INC}" >> "${FILE}"

ARCH=$(uname -m)
if [ "$ARCH" == "armv7l" ]; then
    /opt/config/mod/.shell/zremote.sh ln -s "$DATA_GCODES" /root/printer_data/gcodes || echo ok
else
    /opt/config/mod/.shell/zremote.sh ln -s "$DATA_GCODES" /root/printer_data/ || echo ok
fi
mkdir -p /root/printer_data/gcodes/timelapse/tmp
ln -s /opt/config/mod_data/plugins/timelapse/timelapse.py /opt/config/mod/.shell/root/moonraker/components/timelapse.py 2>/dev/null || echo ok

echo "Moonraker Timelapse installed"
echo "REBOOT" >/tmp/printer
