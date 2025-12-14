#!/bin/sh

source /opt/config/mod/.shell/0.sh

cd /opt/config/mod_data/plugins/timelapse/

if [ -f /ZMOD ]; then
    /opt/config/mod/.shell/zremote.sh /opt/config/mod_data/plugins/timelapse/update.sh
    exit 0
fi

set -x

update()
{
    ls -Rlh /root/printer_data

    a=$(readlink "/root/printer_data/gcodes" 2>/dev/null)
    if [ "$a" != "$DATA_GCODES" ]; then
        rm -rf /root/printer_data/gcodes/timelapse
        rmdir  /root/printer_data/gcodes/gcodes
        rm -f  /root/printer_data/gcodes/gcodes
        rmdir /root/printer_data/gcodes
        rm -f /root/printer_data/gcodes
        mkdir -p /root/printer_data/
        ln -s "$DATA_GCODES" /root/printer_data/gcodes
    fi

    a=$(readlink "/opt/config/mod/.shell/root/moonraker/components/timelapse.py" 2>/dev/null)
    if [ "$a" != "/opt/config/mod_data/plugins/timelapse/timelapse.py" ]; then
        rm -f /opt/config/mod/.shell/root/moonraker/components/timelapse.py
        ln -s /opt/config/mod_data/plugins/timelapse/timelapse.py /opt/config/mod/.shell/root/moonraker/components/timelapse.py
    fi
    mkdir -p /root/printer_data/gcodes/timelapse/tmp

    ls -Rlh /root/printer_data
}

update &>${MOD_CONF}/mod_data/log/plugin_update_timelapse.log
