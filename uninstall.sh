#!/bin/sh

set -e

FILE="/opt/config/mod_data/plugins.moonraker.conf"

sed -i '\|plugins/timelapse/moonraker\.timelapse\.cfg|d' "$FILE"
rm -rf /root/printer_data/gcodes/timelapse
rm -f /opt/config/mod/.shell/root/moonraker/components/timelapse.py

echo "Moonraker Timelapse Uninstalled"
echo "REBOOT" >/tmp/printer
