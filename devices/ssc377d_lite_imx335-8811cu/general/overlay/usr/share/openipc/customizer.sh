#!/bin/sh
# Ensure RTL8811CU USB Wi-Fi profile is set on clean boot
if [ -z "$(fw_printenv -n wlandev 2>/dev/null)" ]; then
	fw_setenv wlandev rtl8811cu-generic
fi
exit 0
