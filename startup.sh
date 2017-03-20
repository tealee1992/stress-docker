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
    `dd if=/dev/zero of=/tempfiles/${name} bs=64k count=1 conv=fsync >/dev/null  2>&1`
    `rm /tempfiles/${name}`
	curl -s 'http://www.baidu.com'>/dev/null
	sleep 1
done
