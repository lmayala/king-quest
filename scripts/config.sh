#!/bin/bash
#addgroup learning
DATABASE_NAME="middle_earth.db"

if [ ! -f /usr/local/lib/${DATABASE_NAME} ]; then
  echo "La base de datos ${DATABASE_NAME} no existe. Creandola..."

  mkdir -p /usr/local/lib/middle_earth || { echo "ERROR: Failed to create /usr/local/lib/middle_earth"; exit 1; }
  chmod 777 /usr/local/lib/middle_earth || { echo "ERROR: Failed to set permissions on /usr/local/lib/middle_earth"; exit 1; }

  sqlite3 /usr/local/lib/middle_earth/${DATABASE_NAME} < /root/middle_earth.sql || { echo "ERROR: Failed to create database schema"; exit 1; }
  chmod 666 /usr/local/lib/middle_earth/${DATABASE_NAME} || { echo "ERROR: Failed to set permissions on ${DATABASE_NAME}"; exit 1; }
else
  echo "La base de datos ${DATABASE_NAME} ya existe. No se creará nuevamente."
fi

