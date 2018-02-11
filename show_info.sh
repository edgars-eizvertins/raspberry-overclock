#!/bin/sh
# Show current hardware
echo "===================================================================================="
vcgencmd measure_temp
vcgencmd get_config int | grep arm_freq
vcgencmd get_config int | grep core_freq
vcgencmd get_config int | grep sdram_freq
vcgencmd get_config int | grep gpu_freq
echo "===================================================================================="

while true;
do
	date;
	vcgencmd measure_clock arm;
	vcgencmd measure_temp;
	echo "================"
	sleep 5;
done;
