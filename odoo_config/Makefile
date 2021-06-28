# Makefile for ODOO start/stop scripts
# 
# Author: siavava <amittaijoel@outlook.com>

CC = shc
CFLAGS = -f

PROGS = start stop config

all: $(PROGS)

start: odoo_start.sh
	$(CC) $(CFLAGS) $^ -o $@
	./start
	make clean

stop: odoo_stop.sh
	$(CC) $(CFLAGS) $^ -o $@
	./stop
	make clean


config: odoo_config.sh
	$(CC) $(CFLAGS) $^ -o $@
	./config
	make clean

rename: rename.sh
	$(CC) $(CFLAGS) $^ -o $@
	./rename
	make clean

clean:
	rm -f start
	rm -f config
	rm -f stop
	rm -f rename