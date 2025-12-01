#!/bin/sh

source /opt/config/mod/.shell/0.sh

if ! [ -f /ZMOD ]; then
    rm -rf /root/printer_data/gcodes/timelapse/tmp 2>/dev/null
    rm -f /root/printer_data/gcodes/gcodes 2>/dev/null
    rmdir /root/printer_data/gcodes/ 2>/dev/null
    rm -f /root/printer_data/gcodes 2>/dev/null
fi

/opt/config/mod/.shell/zremote.sh ln -s "$DATA_GCODES" /root/printer_data/gcodes 2>/dev/null
ln -s /opt/config/mod_data/plugins/timelapse/timelapse.py /opt/config/mod/.shell/root/moonraker/components/timelapse.py 2>/dev/null
