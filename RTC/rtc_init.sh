#!/bin/sh

cnt=`ls /dev/rtc1 | wc -l`

while [ $cnt -eq 0 ]
do
  echo ds1307 0x68 > /sys/class/i2c-adapter/i2c-2/new_device
  sleep 5
  cnt=`ls /dev/rtc1 | wc -l`
done

sleep 5
hwclock -s -f /dev/rtc1
