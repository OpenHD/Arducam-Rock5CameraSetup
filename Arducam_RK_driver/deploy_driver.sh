#!/bin/bash
model=$(cat /proc/device-tree/model)
echo "$model"
if [ "$model" == "Radxa ROCK 5A" ]; then
	cd $(cd "$(dirname "$0")" && pwd)/rock-5a/
elif [ "$model" == "Radxa ROCK 5B" ]; then
	cd $(cd "$(dirname "$0")" && pwd)/rock-5b/
else
	echo "Platform does not support!!!"
	exit 
fi
echo "Install arducam iqfiles..."
sudo dpkg -i ../arducam-iqfiles.deb

