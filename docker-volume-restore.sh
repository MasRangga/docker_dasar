#!/bin/bash

# Buat Volume untuk Redis
docker volume create redisstore

# Jalankan Container Ubuntu untuk Mengembalikan Backup
docker container run --rm --name ubunturestore \
    --mount "type=bind,source=D:\SEMESTER 7\Sister\belajar-docker dasar/backup,destination=/backup" \
    --mount "type=volume,source=redisstore,destination=/data" \
    ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"

# Buat Container MongoDB untuk Mengembalikan Data
docker container create --name mongorestore \
    --publish 27020:27017 \
    --mount "type=volume,source=mongorestore,destination=/data/db" \
    --env MONGO_INITDB_ROOT_USERNAME=eko \
    --env MONGO_INITDB_ROOT_PASSWORD=eko \
    mongo:latest

# Mulai Container MongoDB
docker container start mongorestore
