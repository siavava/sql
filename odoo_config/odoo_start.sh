#!/bin/bash
# odoo_start.sh
# Bash script to start the odoo server
#
# Usage: ./odoo_start.sh
#
# Author: Amittai Joel Siavava


# elevate
# sudo -i:

# start postrgresql
printf "Starting postgresql...\n"
cd /etc/init.d
./postgresql start

# stop postgresql
printf "Starting odoo...\n"
./odoo start