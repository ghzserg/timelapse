#!/bin/sh

FILE="/opt/config/mod_data/plugins.moonraker.conf"

sed -i '\|plugins/timelapse/moonraker\.timelapse\.cfg|d' "$FILE"

rm -f /opt/config/mod/.shell/root/moonraker/components/timelapse.py
rm -rf /root/printer_data/gcodes/timelapse

echo "Moonraker Timelapse Uninstalled"
echo "REBOOT" >/tmp/printer
