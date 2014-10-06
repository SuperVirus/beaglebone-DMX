#!/bin/bash


if [ ! -e /sys/bus/platform/devices/4a300000.pruss ]
then
	echo "PRUSS not enabled - enabling..."
	echo -n BB-BONE-PRU-01 >/sys/devices/bone_capemgr.[98]/slots
	modprobe uio_pruss
fi

(
	cd "`dirname "$0"`"/bin
	./dmx
)
