#!/bin/bash
#titul---------------+
#
#ver.001.001
#
#--------------------+
#

#conky_Mainte-------------------------------------------------------------------------------------------------------+
wget https://github.com/gvoze32/Mainte/archive/refs/tags/v3.0.tar.gz
tar -xvf v3.0.tar.gz -C ~/.conky
cd /home/$USER/.conky/Mainte-3.0
./conky-launch.sh
