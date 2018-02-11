while true; do vcgencmd measure_clock arm; vcgencmd measure_temp; sleep 10; done& ./cpuburn-a53
