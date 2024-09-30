#!/bin/bash

# Hentikan Container Volume
docker container stop redisvolume

# Buat Container Nginx untuk Backup
docker container create --name nginxbackup \
    --mount "type=bind,source=D:\SEMESTER 7\Sister\belajar-docker dasar,destination=/backup" \
    --mount "type=volume,source=redisvolume,destination=/data" \
    nginx:alpine

# Mulai Container Nginx
docker container start nginxbackup

# Masuk ke Dalam Container untuk Backup
docker container exec -i -t nginxbackup /bin/bash -c "tar cvf /backup/backup.tar.gz /data"

# Hentikan dan Hapus Container Nginx
docker container stop nginxbackup
docker container rm nginxbackup

# Mulai Kembali Container Volume
docker container start mongovolume

# Cara Sederhana Menggunakan Ubuntu untuk Backup
# Pull Image Ubuntu Terbaru
docker image pull ubuntu:latest

# Jalankan Container Ubuntu untuk Backup
docker container run --rm --name ubuntubackup \
    --mount "type=bind,source=D:\SEMESTER 7\Sister\belajar-docker dasar,destination=/backup" \
    --mount "type=volume,source=redisvolume,destination=/data" \
    ubuntu:latest tar cvf /backup/backup-lagi.tar.gz /data

# Mulai Kembali Container Volume
docker container start mongovolume
