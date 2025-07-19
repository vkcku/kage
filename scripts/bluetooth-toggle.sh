#/usr/bin/env bash

set -e

bluetooth_on="$(bluetoothctl show | grep Powered | awk '{printf $2}')"

if [ "$bluetooth_on" = "yes" ]; then
  bluetoothctl power off
  exit 0
fi

if [ "$bluetooth_on" = "no" ]; then
  bluetoothctl power on
  exit 0
fi


printf "fatal: unrecognized bluetooth status: %s\n" "$bluetooth_on"
exit 1
