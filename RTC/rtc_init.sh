#!/bin/sh

cnt=`ls /dev/rtc1 | wc -l`

while true; do
  sleep 10
  cnt1=`ls /dev/rtc1 | wc -l`
  [ $cnt1 -ne $cnt ] && exit
  echo ds1307 0x68 > /sys/class/i2c-adapter/i2c-2/new_device &>> /tmp/rtc.err.log
done

hwclock -D -s -f /dev/rtc1 &>> /tmp/hwclock.err.log
