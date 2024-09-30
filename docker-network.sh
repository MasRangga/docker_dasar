# Manajemen Jaringan di Docker

## Melihat Jaringan

Untuk melihat semua jaringan yang tersedia di Docker, kita bisa menggunakan perintah:

```bash
docker network ls

## Membuat Jaringan
docker network create --driver bridge namanetwork

## Menghapus Jaringan
docker network rm namanetwork
```
