#!/bin/sh

FILE="/opt/config/mod_data/plugins.moonraker.conf"

sed -i '\|plugins/timelapse/moonraker\.timelapse\.cfg|d' "$FILE"
/opt/config/mod/.shell/zremote.sh rm -rf /root/printer_data/gcodes/timelapse
/opt/config/mod/.shell/zremote.sh rm -f /root/printer_data/gcodes/gcodes
/opt/config/mod/.shell/zremote.sh rmdir /root/printer_data/gcodes/
/opt/config/mod/.shell/zremote.sh rm -f /root/printer_data/gcodes
/opt/config/mod/.shell/zremote.sh rm -f /opt/config/mod/.shell/root/moonraker/components/timelapse.py
/opt/config/mod/.shell/zremote.sh ln -s "$DATA_GCODES" /root/printer_data/gcodes 2>/dev/null

echo "Moonraker Timelapse Uninstalled"
echo "REBOOT" >/tmp/printer
