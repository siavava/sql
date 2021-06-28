#!/bin/bash
# odoo_stop.sh
# Bash script to quit the odoo server
#
# Usage: ./odoo_stop.sh
#
# Author: Amittai Joel Siavava

# elevate
# sudo -i:

# stop program
printf "Stopping odoo...\n"
cd /etc/init.d
./odoo stop

# stop postgresql
printf "Stopping postgresql...\n"
./postgresql stop