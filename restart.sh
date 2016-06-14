#!/bin/bash
cd ~/open-zwave/
make
sudo make install
cd ~/open-zwave-control-panel/
make
sudo ./ozwcp -z /dev/ttyACM0 -p 5555 > log.txt 2>&1
