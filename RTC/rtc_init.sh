#!/usr/bin/env bash

echo ds1307 0x68 > /sys/class/i2c-adapter/i2c-2/new_device 2>> /tmp/rtc.err.log 
sleep 10
hwclock -D -s -f /dev/rtc1 2>> /tmp/hw.err.log
