#!/bin/bash
# Ubicacion de la carpeta de backups.
dir="/var/backups/postgresql/"
# Nombre del backup
nombre=`date +%d-%m-%Y`
# saca el backup
pg_dump -U admin_user -F c -b -v -f $dir/$nombre.backup musicdb 
