#!/bin/sh
# run cpuratio
/cpuratio &
#run stress memratio
stress --vm 1 --vm-bytes 128M --vm-hang 0 &



# just keep this script running and run net-ioratio
while  true 
do
    date=$(date +%s+%N);
    name=${date}".dbf"
    `time dd if=/dev/zero of=/home/docker/dbffiles/${name} bs=64k count=256 conv=fsync >/dev/null  2>&1`
    `rm ~/dbffiles/${name}`
	curl -s 'http://www.baidu.com'>/dev/null
	sleep 1
done
